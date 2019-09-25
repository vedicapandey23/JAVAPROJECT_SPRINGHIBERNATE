<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="sample.jsp" %>
<%@ include file="crud.jsp" %>
<title>Insert title here</title>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
 <script type="text/javascript">
    function ajaxView() {
        $.ajax({
            url :'cretieveAllSplit.html',
            success : function(data) {
            	
                $("#v2").html(data);
            }
        });
        /* alert("jjjj") */
    }
</script> 
 
<script type="text/javascript">
     var intervalId = 0;
    intervalId = setInterval(ajaxView, 500000000); 
</script>
<style>
.div12 {
    background: linear-gradient(to bottom, #c0c0c0 59%, #ffcc00 121%) center fixed;
    font-family:serif;
}
</style>
</head>
<body class="div12" >
<div class="row">
<h1>Retrieve customer data by customer code</h1>
 <div class="col" >
      <jsp:include page="retrieveBy2.jsp" /> 
    </div>
    </div>
    <div class="row">
   
    <div id="v2" class="col" style="overflow:scroll">
     <h1>Customer Data </h1>
     <jsp:include page="retrieveallsplit.jsp" />  
    </div> 
</div>





</body>
</html>