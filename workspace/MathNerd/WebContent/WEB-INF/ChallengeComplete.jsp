<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>
		<c:if test="${!empty answerSuccess}">
			Good Work
		</c:if>
		<c:if test="${empty answerSuccess}">
			Oh Darn 
		</c:if>
		 | Math Nerd
	</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
</head>
<body>

	<c:if test="${!empty answerSuccess}">
			<h1><small>The Answer is </small> ${correctAnswer}</h1> 
	</c:if>
	
	<h2 class="heading"> 
 		Addition Challenge
 	</h2>
 	<label for="answer" class="sr-only">Addition</label><hr /> 
 		${firstVariable} + ${secondVariable} = 
 	<c:if test="${empty answerSuccess}">
 		<div class="alert alert-danger" role="alert">${usersAnswer}</div>
 	</c:if>
 	<c:if test="${!empty answerSuccess}">
 		<div class="alert alert-success" role="alert">${usersAnswer}</div>
 	</c:if>
</body>
</html>