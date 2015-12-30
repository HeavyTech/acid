<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
 	<title>Login MathNerd</title> 
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head> 
<body> 
 	<div class="container"> 
 		<div class="jumbotron"> 
 			<h1>Math Nerd<small>Challenge</small></h1> 
 		</div> 
 		<div class="row"> 
 			<div class="col-sm-offset-3 col-sm-6"> 
 				<c:if test="${!empty loginError}"> 
 					<p class="text-danger text-center" > 
 						Invalid Username and/or Password					 
 					</p> 
 				</c:if> 
 				 
 				<form action="Login" class="form-signin" method="post"> 
 					<h2 class="form-signin-heading"> 
 						Please Sign In | <a href="http://localhost:8080/MathNerd/Register">Register</a> 
 					</h2> 
 					<label for="email" class="sr-only">Email Address</label> 
 					<input type="email" name="email" id="email" class="form-control" placeholder="Email Address"/> 
 					<label for="password" class="sr-only">Password</label> 
 					<input type="password" name="password" id="password" class="form-control" placeholder="Password"/> 
 					<div class="checkbox"> 
 						<label><input type="checkbox" name="remember" value="yes"/>Remember Me</label> 
 					</div> 
 					<button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button> 
 				</form> 
 			</div> 
 		</div>
 		<br />
 		<br />
 		<br /><br />
 		<br />
 		<br />
 		<br />
 		<div class="panel-footer col-md-12">
 			<div class="footer">
 				<div class="col-md-4">
 					<h4>Company Information:</h4>
 					<h5><a>Mission Statement</a></h5>
 					<h5><a>Careers</a></h5> 				
 				</div>
 				<div class="col-md-4">
 					<h4>Contact Us:</h4>
 					<h5><a>Facebook</a></h5>
 					<h5><a>Twitter</a></h5> 				
 				</div>
 				<div class="col-md-4">
 					<h4>News:</h4>
 					<h5><a>Updates</a></h5>				
 				</div>
			</div>
		</div> 
	</div> 
</body> 
</html> 