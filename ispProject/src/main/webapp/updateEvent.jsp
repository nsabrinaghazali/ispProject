<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Event</title>
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

form {
	border-radius: 5px;
	padding: 5px;
	border-style: solid;
	background-color: #F6F5F0;
}

input[type=text], input[type=number], select {
	width: 30%;
	padding: 12px 20px; margin 8px 0;
	display: inline-block;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type=submit],input[type=reset] {
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
	<h2>Edit Event</h2>
	<hr>
	<form action="listEvent.jsp" method="post">
		<label for="name">EVENT NAME</label><br> <input type="text"
			id="name" name="name" placeholder="Event Name" required><br>
		<br> <label for="type">EVENT TYPE</label><br> <select
			name="type" required>
			<option value="Lecture">Lecture</option>
			<option value="Competition">Competition</option>
			<option value="Community Service">Community Service</option>
		</select><br> <br> <label for="participant">NUMBER OF
			PARTICIPANT</label><br> <input type="number" name="participant" required><br>
		<br> <input type="hidden" name="id"
			value="<c:out value="${param.id}"/>" /><br> <input type="submit"
			value="Submit">&nbsp; <input type="reset" value="Reset">

	</form>
</body>
</html>
