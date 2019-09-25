<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="errorFile.css"/>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@page isELIgnored="false" %>

<%-- <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> --%>

<!-- <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --%>


<link href="${pageContext.request.contextPath}/assests/js/clientvalidation.js" rel="stylesheet">


<link rel="stylesheet" href="login.css">

<title>Insert title here</title>
<script src="clientvalidation.js"></script>
<script src="back.js"></script>
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
</style>



<body>
<div class="transbox">
<div align="center">
${status}
${status1}
</div>




<s:form name="register" onsubmit="return qwerty()" action="cdisplayform" modelAttribute="customer" id="createform" >


<div class="form-group">


<label style="color: snow;"><msg:message code="label.customer.custid"/></label><font color="red">*</font>
<s:input path="customerCode" class="form-control"  name="customerCode" placeholder="Enter customer code" maxlength="11" onkeyup="myFunction()"/>
 <label id="cust_name_len" style="display: none;">* customer name length should not more than 10</label>

<s:errors path="customerCode"></s:errors>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custname"/> </label><font color="red">*</font>
<s:input path="customerName" class="form-control" placeholder="Enter customer name"  maxlength="31" onkeyup="myFunction()"/>
 <label id="cust_name_len" style="display: none;">* customer name length should not more than 30</label>
<s:errors path="customerName"></s:errors>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custadd1"/></label><font color="red">*</font> <s:input class="form-control" placeholder="Enter Customer Address" path="customerAddress1"/>
<label id="cust_add1_len" style="display: none;"><span style="color: red;">*</span> customer add1 length should not more than 100</label>
<s:errors path="customerAddress1" class="colour1"></s:errors><br>

</div>
<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custadd2"/></label> <s:input class="form-control" placeholder="Enter Customer Address" path="customerAddress2"/>
 <label id="cust_add2_len" style="display: none;">* customer add2 length should not more than 100</label>
<s:errors path="customerAddress2"></s:errors><br>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custpin"/></label> <font color="red">*</font><s:input path="customerPinCode" placeholder="Enter Pincode" class="form-control"/>
 <label id="cust_pin_len" style="display: none;">* pincode length should not more than 6</label>
<s:errors path="customerPinCode"></s:errors><br>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custemail"/><font color="red">*</font></label> <s:input class="form-control" path="emailAddress" placeholder="Enter customer Email"/>
 <label id="email_len" style="display: none;">* email length should not more than 100</label>
<s:errors path="emailAddress"></s:errors><br>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custcontact"/></label> <s:input class="form-control" path="contactNumber" placeholder="Enter Contact Number"/><br>
 <label id="cont_num_len" style="display: none;">* contact number length should not more than 20</label>
<s:errors path="contactNumber"></s:errors><br>
</div>

<div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custprimary"/> </label><font color="red">*</font><s:input class="form-control" path="primaryContactPerson"  placeholder="Enter Contact Person"/><br>
 <label id="Per_len" style="display: none;">* Contact Person name length should not more than 100</label>
<s:errors path="primaryContactPerson"></s:errors><br>
</div>

<%-- <div class="form-group">
<label style="color: snow;"><msg:message code="label.customer.custrecord"/></label> <s:input  class="form-control" path="recordStatus"/><br>
<s:errors path="recordStatus"></s:errors><br>
</div> --%>

<div class="form-group">
<div class="dropdown">
<s:label path = "activeInactiveFlag"><label style="color: snow;"><msg:message code="label.customer.custactive"/></label></s:label>
<%-- Enter Customer active/inactive: <s:select path="activeInactiveFlag"/><br> --%>

<s:select path = "activeInactiveFlag">  
                     <s:option value = "A" label = "Active"/>
                      <s:option value = "I" label = "InActive"/>
                  </s:select>     	
<s:errors path = "activeInactiveFlag"></s:errors>
</div>
</div>
<input type="submit" value="Save"/>
</s:form>

<script type="text/javascript">
function refresh (timeoutPeriod){ 
    /* refresh = setTimeout(function(){window.location.reload(true);},timeoutPeriod);  */
    onsubmit="setTimeout(function () { window.location.reload(); }, 10)"
} 
</script>
</div>
</body>
</html>