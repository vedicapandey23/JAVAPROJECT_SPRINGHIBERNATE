<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" href="login.css">
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<script src="style.js"></script>
<script src="back.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>Insert title here</title>
</head>
<body>


		<nav class="navbar navbar-expand-sm   navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
       <a class="nav-link" >Username: <security:authentication property="principal.Username"></security:authentication> <span class="sr-only">(current)</span></a>
      
      </li>
      
      <%-- <li class="nav-item">
       <a class="nav-link">Usertype:<security:authentication property="principal.Authorities"></security:authentication> </a>
      </li> --%>
    <li class="nav-item">
      <security:authorize ifAnyGranted="ROLE_MAKER">
      
       <a class="nav-link" href="cmainpage">Home</a> 
     
      </security:authorize>
      </li>
     
     
     
     <%--  <li class="nav-item">
       <security:authorize ifAnyGranted="ROLE_CHECKER">
       <a class="nav-link" href="cchecker">Home</a> 
       </security:authorize>
      </li>
      
     
     
     
      
      <li class="nav-item">
      <security:authorize ifAnyGranted="ROLE_ADMIN">
       <a class="nav-link" href="cadmin">Home</a> 
        </security:authorize>
      </li> --%>
     
     
     <li class="nav-item" >
     
      <a class="nav-link" href="j_spring_security_logout">logout</a>
     
      </li>
    
    </ul>
    
      
   
  
    
  
    
    
  </div>
</nav>
</body>
</html>