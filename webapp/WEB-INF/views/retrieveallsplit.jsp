<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAll</title>
</head>

<style>
.transbox {
 
  position: absolute; /* Position the background text */
 
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
}
</style>
<body>
<div >

<table id="example" cellspacing="0"  class="display" class="transbox" style="padding:8px;width:85%;border:1px solid black;" >
        <thead>
            <tr>
               <th>Customer Code</th>
                <th>Customer Name</th>
                <th>Address1</th>
                <th>Address2</th>
                <th>Pin Code</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Primary Contact Person</th>
                <th>Record status</th>
                <th>Active/Inactive Flag</th>
                <th>Create Date</th>
                <th>Created By</th>
                <th>Modified Date</th>
                <th>Modified By</th>
                <th>Authorized Date</th>
                <th>Authorized By</th>
                
                
                
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Customer Code</th>
                <th>Customer Name</th>
                <th>Address1</th>
                <th>Address2</th>
                <th>Pin Code</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Primary Contact Person</th>
                <th>Record status</th>
                <th>Active/Inactive Flag</th>
                <th>Create Date</th>
                <th>Created By</th>
                <th>Modified Date</th>
                <th>Modified By</th>
                <th>Authorized Date</th>
                <th>Authorized By</th>
                
            </tr>
        </tfoot>
        <tbody>
       		<c:forEach items="${list}" var="slist">
			   		<tr>
					<td><c:out value="${slist.customerCode}"></c:out><br></td>
					<td><c:out value="${slist.customerName}"></c:out><br></td>
					<td><c:out value="${slist.customerAddress1}"></c:out><br></td>
					<td><c:out value="${slist.customerAddress2}"></c:out><br></td>
					<td><c:out value="${slist.customerPinCode}"></c:out><br></td>
					<td><c:out value="${slist.emailAddress}"></c:out><br></td>
					<td><c:out value="${slist.contactNumber}"></c:out><br></td>
					<td><c:out value="${slist.primaryContactPerson}"></c:out><br></td>
					<td><c:out value="${slist.recordStatus}"></c:out><br></td>
					<td><c:out value="${slist.activeInactiveFlag}"></c:out><br></td>
					<td><c:out value="${slist.createDate}"></c:out><br></td>
					<td><c:out value="${slist.createdBy}"></c:out><br></td>
					<td><c:out value="${slist.modifiedDate}"></c:out><br></td>
					<td><c:out value="${slist.modifiedBy}"></c:out><br></td>
					<td><c:out value="${slist.authorizedDate}"></c:out><br></td>
					<td><c:out value="${slist.authorizedBy}"></c:out><br></td>

				</tr>
			</c:forEach>
        </tbody>
        </table>

      

<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</div>
</body>
</html>