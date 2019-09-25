<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@page isELIgnored="false"%>
<%@ include file="sample.jsp" %>
<title>Insert title here</title>
</head>
<h1>Customer Data</h1>
<body>
<form action="cretieveAlldsc">
<c:set var="list" value="${requestScope.list}"/>

<%-- <c:forEach var="i" begin="0" end="${list.size()-1}">
<c:out value="${list.get(i).customerCode}"></c:out>
</c:forEach> --%>

  <select name="select" >
  <option value="customername">Customer Name</option>
  <option value="email">Email</option>

</select>
          
        

<table border="2" width="70%" cellpadding="2">



<tr><th>Customer Code</th><th>Customer Name</th><th>Address</th><th>Address2</th><th>Pincode</th><th>Email</th><th>Contact Number</th><th>Primary Contact Number</th><th>Record status</th><th>Active/Inactive</th><th>create date</th><th>created by</th><th>modified date</th><th>modified by</th><th>authorized date</th><th>authorized by</th></tr>

<c:forEach var="i" begin="0" end="${list.size()-1}">

<tr>
<td><c:out value="${list.get(i).customerCode}"></c:out><br></td>
 <td><c:out value="${list.get(i).customerName}"></c:out><br></td>
<td><c:out value="${list.get(i).customerAddress1}"></c:out><br></td>
<td><c:out value="${list.get(i).customerAddress2}"></c:out><br></td>
<td><c:out value="${list.get(i).customerPinCode}"></c:out><br></td>
<td><c:out value="${list.get(i).emailAddress}"></c:out><br></td>
<td><c:out value="${list.get(i).contactNumber}"></c:out><br></td>
<td><c:out value="${list.get(i).primaryContactPerson}"></c:out><br></td>
<td><c:out value="${list.get(i).recordStatus}"></c:out><br></td>
<td><c:out value="${list.get(i).activeInactiveFlag}"></c:out><br></td> 
<td><c:out value="${list.get(i).createDate}"></c:out><br></td> 
<td><c:out value="${list.get(i).createdBy}"></c:out><br></td> 
<td><c:out value="${list.get(i).modifiedDate}"></c:out><br></td> 
<td><c:out value="${list.get(i).modifiedBy}"></c:out><br></td> 
<td><c:out value="${list.get(i).authorizedDate}"></c:out><br></td> 
<td><c:out value="${list.get(i).authorizedBy}"></c:out><br></td> 



</tr>
</c:forEach>
</table> 


<div align="center"><a href="index.jsp">Home</a></div>

<input type="submit" name="asc" value="asc">
          <input type="submit" name="dsc" value="dsc">
</form>
</body>
</html>