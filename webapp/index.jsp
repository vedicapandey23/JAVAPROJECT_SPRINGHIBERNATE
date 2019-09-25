<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@page isELIgnored="false"%>

<body style="background-color:lightblue">
<h2 align="center">XYZ Bank</h2>



<security:authorize ifAnyGranted="ROLE_MAKER">
<div align="center">
<a href="cmaker">Maker</a><br>

</div>
</security:authorize>
<security:authorize ifAnyGranted="ROLE_CHECKER">
<div align="center">
<a href="cchecker">Checker</a><br>

</div>
</security:authorize>

</body>
</html>
