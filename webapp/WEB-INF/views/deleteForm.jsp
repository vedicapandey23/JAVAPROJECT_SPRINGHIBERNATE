<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
</head>
<style>
div.transbox {
 
  position: absolute; /* Position the background text */
  /* bottom: 0; */ /* At the bottom. Use top:0 to append it to the top */
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.2); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
}

</style>
<body  >
<div class="transbox">
<div align="center">
<form action="cdeleteForm1" method="post" >
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
enter the code:<input type="text" name="customerCode"/>
<input type="submit" value="Delete"/>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</form>
</div>
<%-- <div align="center">${statusdelete}</div> --%>
<div align="center">${statusdelete1}</div>
</div>
</body>
</html>
