<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Math Nerd</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	</head>
	
	<body>
		<div class="container">
			<div class="jumbotron">
				<h1>Welcome to Math Nerd!</h1>
				<h3>V.Genesis.0.1</h3>
				<p>Math Nerd! is an educational Math app that allows you to solve math problems and score points that you can compare with other Registered users.</p>
				<p>To begin, register below.</p>
			</div>
        	<div class="panel panel-primary">
        		<div class="panel-heading">
          			<h3 class="panel-title">New User Registration</h3>
            	</div>
            	<div class="panel-body">
            		<form action="Register" method="post">
            	    	<div class="form-group">
							<label for="firstName">First Name</label>
							<c:if test="${!empty firstNameError}">
								<div class="alert alert-danger" role="alert"> ${firstNameError}</div>
							</c:if>
							
							<input type="text" class="form-control" name="firstName" value="${firstName}" id="firstName" placeholder="First Name" />
						</div>
						<div class="form-group">
							<label for="lastName">Last Name</label>
							<c:if test="${!empty lastNameError}">
								<div class="alert alert-danger" role="alert"> ${lastNameError}</div>
							</c:if>
							<input type="text" class="form-control" name="lastName" value="${lastName}" id="lastName" placeholder="Last Name" />
						</div>
						<div class="form-group">
							<label for="email">Email Address</label>
							<c:if test="${!empty emailError}">
								<div class="alert alert-danger" role="alert"> ${emailError}</div>
							</c:if>
							<input type="email" class="form-control" name="email" value="${email}" id="email" placeholder="Email">
						</div>
		  			    <div class="form-group">
							<label for="password1">Password</label>
							<c:if test="${!empty passwordError}">
								<div class="alert alert-danger" role="alert"> ${passwordError}</div>
							</c:if>
							<input type="password" class="form-control" name="password1" value="" id="password1" placeholder="Password">
						</div>
						<div class="form-group">
							<label for="password2">Re-Enter Password</label>
							<c:if test="${!empty passwordReenterError}">
								<div class="alert alert-danger" role="alert"> ${passwordReenterError}</div>
							</c:if>
							<input type="password" class="form-control" name="password2" value="" id="password2" placeholder="Re-Enter Your Password">
						</div>
						<button type="submit" class="btn btn-primary">Register</button>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>