<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Insert title here</title>
</head>
<body style="background-color:lightblue" >
<s:form action="cupdateBy3" modelAttribute="customer">
Enter Customer code:<s:input path="customerCode" /> <%--  <c:out value="${customer.customerCode}"/> --%><br>
<s:errors path="customerCode" class="colour1"></s:errors><br>

Enter Customer Name: <s:input path="customerName"/><br>
<s:errors path="customerName" class="colour1"></s:errors><br>


Enter Customer Address1: <s:input path="customerAddress1"/><br>
<s:errors path="customerAddress1" class="colour1"></s:errors><br>

Enter Customer Address2: <s:input path="customerAddress2"/><br>
<s:errors path="customerAddress2"></s:errors><br>

Enter Customer pincode: <s:input path="customerPinCode" /><br>
<s:errors path="customerPinCode"></s:errors><br>

Enter Customer email: <s:input path="emailAddress"/><br>
<s:errors path="emailAddress"></s:errors><br>

Enter Customer contact number: <s:input path="contactNumber"/><br>
<s:errors path="contactNumber"></s:errors><br>

Enter Customer primary contact person: <s:input path="primaryContactPerson"/><br>
<s:errors path="primaryContactPerson"></s:errors><br>


<s:label path = "activeInactiveFlag">Active/Inactive</s:label>
<%-- Enter Customer active/inactive: <s:select path="activeInactiveFlag"/><br> --%>

<s:select path = "activeInactiveFlag">
                     <s:option value = "A" label = "Active"/>
                      <s:option value = "I" label = "InActive"/>
                  </s:select>     	
<s:errors path = "activeInactiveFlag"></s:errors>

<input type="submit" value="update"/>
</s:form>
<div align="center">${statusupdate}</div>
</body>
</html>