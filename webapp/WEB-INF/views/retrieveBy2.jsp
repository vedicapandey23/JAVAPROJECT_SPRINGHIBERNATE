<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<title>Insert title here</title>
</head>
<body>
<%-- <c:set var="list" value="${requestScope.customer}"/> --%>

<table border="2" width="70%" cellpadding="2">
<tr><th>Customer Code</th><th>Customer Name</th><th>Address</th><th>Address2</th><th>Pincode</th><th>Email</th><th>Contact Number</th><th>Primary Contact Number</th><th>Record status</th><th>Active/Inactive</th><th>create date</th><th>created by</th><th>modified date</th><th>modified by</th><th>authorized date</th><th>authorized by</th></tr>
<tr><br></tr>
<tr>
<td><c:out value="${customer.customerCode}"></c:out><br></td>
 <td><c:out value="${customer.customerName}"></c:out><br></td>
<td><c:out value="${customer.customerAddress1}"></c:out><br></td>
<td><c:out value="${customer.customerAddress2}"></c:out><br></td>
<td><c:out value="${customer.customerPinCode}"></c:out><br></td>
<td><c:out value="${customer.emailAddress}"></c:out><br></td>
<td><c:out value="${customer.contactNumber}"></c:out><br></td>
<td><c:out value="${customer.primaryContactPerson}"></c:out><br></td>
<td><c:out value="${customer.recordStatus}"></c:out><br></td>
<td><c:out value="${customer.activeInactiveFlag}"></c:out><br></td> 
<td><c:out value="${customer.createDate}"></c:out><br></td> 
<td><c:out value="${customer.createdBy}"></c:out><br></td> 
<td><c:out value="${customer.modifiedDate}"></c:out><br></td> 
<td><c:out value="${customer.modifiedBy}"></c:out><br></td> 
<td><c:out value="${customer.authorizedDate}"></c:out><br></td> 
<td><c:out value="${customer.authorizedBy}"></c:out><br></td> 
</tr>
</table>

</body>
</html>