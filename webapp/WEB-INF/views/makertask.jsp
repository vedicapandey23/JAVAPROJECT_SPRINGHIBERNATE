<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
<%-- <%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %> --%>
<%@page isELIgnored="false"%>
<%@ include file="sample.jsp" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link href="${pageContext.request.contextPath}/assests/css/picturehover.css" rel="stylesheet">


<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>


<body>


</head>


<style >
#div12 {
    background: linear-gradient(to bottom, #c0c0c0 59%, #ffcc00 121%) center fixed;
    font-family:serif;
}

#glyphicon1 {
    font-size: 70px;
}


</style>

<body id="div12">


<table cellpadding="10px">

<tr>
<td >
    <div class="container">
 <img class="demo w3-opacity w3-hover-opacity-off"  src=<c:url value="/assests/images/image1.jpg"/> style="width:300px;height:200px;">
  <div class="overlay">SAVE & INVEST</div>
</div>
     </td>
     <td> 
    <div class="container">
  <img class="demo w3-opacity w3-hover-opacity-off" src=<c:url value="/assests/images/image5.jpg"/> style="width:300px;height:200px;">
  <div class="overlay">MY FAMILY & ME</div>
</div>
    </td>
    <td>
    <div class="container">
      <img class="demo w3-opacity w3-hover-opacity-off" src=<c:url value="/assests/images/image3.jpg"/> style="width:300px;height:200px;">
     <div class="overlay">DIGITAL BANKING</div>
     </div>
     </td >
     <td >
     <div class="container">
      <img class="demo w3-opacity w3-hover-opacity-off" src=<c:url value="/assests/images/image4.jpg"/> style="width:300px;height:200px;">
     <div class="overlay">MY HOME</div>
      </div>
      </td>
     
     </tr>

  
<tr>

<td>
<td>
<td>


<h1 style="color:white;">Bangkok Bank</h1><br>



</td>
</tr>
<tr>
<td>
<td>
<td>
<marquee width="300%" behavior="alternate">
<h2 style="color:white;">Endless Experience....... Smart savings to achieve your goals</h2>
</marquee>
</td>
</tr>
<tr>
<td>
<td>
<td>
<h3 align="center" style="color:white;">Maker</h3>
</td>
</tr>
<tr>



<td>
<div align="center" id="glyphicon1" >
<a href="c/ccreateform"  title="Create new customer" style="color:dark grey">
          <span class="glyphicon glyphicon-pencil"></span>
        </a>
        </div>
        </td>
        <td>
        <div align="center" id="glyphicon1" >
<a href="cretieveAll"  title="View All Customer Data">
          <span class="glyphicon glyphicon-list-alt"></span>
        </a>
        </div>
  </td>
  <td>
 <div align="center" id="glyphicon1" >
<a href="cretieveBy1" title="View by customercode">
          <span class="glyphicon glyphicon-eye-open"></span>
        </a>
        </div>
        </td>
        <td>
        <div align="center" id="glyphicon1" >
        <a href="cupdateBy1"  title="Update existing customer">
          <span class="glyphicon glyphicon-edit"></span>
        </a>
        </div>
        </td>
       
        <td>
         <div align="center" id="glyphicon1" >
        <a href="cdeleteForm"  title="Delete customer record">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
        </div>
</td>

</tr>


</table>
</body>
</html>
