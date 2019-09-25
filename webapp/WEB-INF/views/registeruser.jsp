<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="errorFile.css"/>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@page isELIgnored="false" %>

<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ include file="sample.jsp" %>
</head>



<style>
body {
background-image:url("images/bg1.jpg");
background-size:cover;


}

div.transbox {
 
  position: absolute; /* Position the background text */
  /* bottom: 0; */ /* At the bottom. Use top:0 to append it to the top */
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.2); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
}


#div12 {
    background: linear-gradient(to bottom, #c0c0c0 59%, #ffcc00 121%)  center fixed;
    font-family:serif;
}


</style>
<body id="div12" >


<body>
<div class="transbox">
<div align="center">

</div>





<s:form name="register" onsubmit="return qwerty()" action="cregisteruser1" modelAttribute="userReg" id="createform" >

<h1>User Registration</h1>
<div class="form-group">


<label style="color: snow;">User id:</label>
<s:input path="user_id" class="form-control"  name="user_id" placeholder="Enter user id" />
</div>

<div class="form-group">
<label style="color: snow;">UserName:</label>
<s:input path="username" class="form-control" placeholder="Enter user name"  />

</div>

<div class="form-group">
<label style="color: snow;">Password:</label> <s:input class="form-control" placeholder="Enter password" path="user_password"/>
</div>


<div class="dropdown">
  <span>Click Role:</span>
  <div class="dropdown-content">
  <c:set var="roles" value="${requestScope.role1}"></c:set>
   <c:forEach  var="i" begin="0" end="${roles.size()-1}"> 
  ${roles.get(i).role}
<input type="checkbox" name="rolename" value="${roles.get(i).role}"><td>
</c:forEach>
  </div>
</div>



<input type="submit" value="Register" style="color: black;"/>

</s:form>


</div>
</body>
</html>