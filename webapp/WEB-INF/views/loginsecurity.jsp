
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" >


	<title>Login Page</title>
<link href="${pageContext.request.contextPath}/assests/css/login.css" rel="stylesheet">
   
	
</head>

<style>
body {


background: linear-gradient(to bottom, #c0c0c0 59%, #ffcc00 121%);
}



div.transbox {
 
  position: static; /* Position the background text */
  /* bottom: 0; */ /* At the bottom. Use top:0 to append it to the top */
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.2); /* Black background with 0.5 opacity */
  color: #f1f1f1; /* Grey text */
  width: 100%; /* Full width */
  padding: 20px; /* Some padding */
}

</style>

<body>


<div class="container">
	<div class="d-flex justify-content-center h-100">
	
		<div class="card" >
			<div class="card-header">
			
				<h3 align="center">Sign In</h3>
				
			</div>
			<div class="card-body">
				<form action="j_spring_security_check" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" name="j_username" placeholder="username">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control"  name="j_password" placeholder="password">
					</div>
					
					<div class="form-group"  align="center">
						<input type="submit" value="Login" class="btn float-center login_btn" >
					</div>
				</form>
				
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center">
					${statusfail}
 ${statusdenied}
${statusrecord}
				</div>
				
			</div>
		</div>
	</div>
</div>

</body>
</html>