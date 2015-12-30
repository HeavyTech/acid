<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome | Math Nerd</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
	<form action="Home" class="form" method="post">
		<h2 class="form-heading"> 
 			Addition Challenge
 		</h2>
 		<label for="answer" class="sr-only">Addition</label><hr /> 
 		${firstVariable} + ${secondVariable} = 
 		<input type="hidden" name="firstVariable" value="${firstVariable}"/>
 		<input type="hidden" name="secondVariable" value="${secondVariable}"/>
 		<input type="text" name="answer" id="answer" class="form-control" placeholder="0"/>
 		<button class="btn btn-lg btn-primary btn-block" type="submit">Check Answer</button> 
	</form>
</body>
</html>