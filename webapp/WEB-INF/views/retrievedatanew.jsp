<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="sample.jsp" %>
<%@ include file="crud.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAll</title>
</head>
<style>
.div12 {
    background: linear-gradient(to bottom, #c0c0c0 59%, #ffcc00 121%) center fixed;
    font-family:serif;
}


</style>
<body class="div12">


<table id="example" cellspacing="0"  class="display" style="padding:8px;width:85%;">
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
                <th>Delete</th>
                
                
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
                <th>Delete</th>
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
<td><a href="cdelete/${slist.customerCode}">delete</a></td>
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

</body>
</html>