<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Details</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	text-align: center;
	background-color: #C7BBBC;
	color: #555555;
	margin-left: 250px;
	margin-right: 250px;
	margin-top: 5px;
}

div {
	text-align: left;
	border-radius: 5px;
	padding: 5px;
	border-style: solid;
	background-color: #F6F5F0;
}

button {
	width: 15%;
	background-color: #CED6E0;;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	color: #555555;
}
</style>
</head>
<body>
	<h1>EVENT MANAGEMENT SYSTEM</h1>
	<h2>Event Details</h2>
	<hr>
	<a href="listEvent.jsp">
		<button>View All Event</button>
	</a>
	<br>
	<br>
	<div>
		ID: 101
		<br> <br> 
		EVENT NAME: COLOURING CONTEST
		<br> <br> 
		EVENT TYPE: COMPETITION
		<br> <br> 
		NO OF PARTICIPANT: 25
		<br> <br>
	</div>

</body>
</html>