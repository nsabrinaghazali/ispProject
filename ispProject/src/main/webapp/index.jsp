<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyMasjid: Event Management System UiTM </title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	text-align: center;
	background-color: #C7BBBC;
	color: #555555;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	margin: 0;
}

button {
	background-color: #CED6E0;
	border: none;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	color: #555555;
}

a {
	text-decoration: none;
}
</style>
		
</head>
<body>


	<h2>WELCOME TO MASJID UiTM JASIN MELAKA </h2>
	<h1>MyMasjid: EVENT MANAGEMENT SYSTEM</h1>
	<h2>TEAM YEAGERIST</h2>

	<hr>
	<a href="listEvent.jsp">
		<button>View Events</button>
	</a>&nbsp;
	<a href="addEvent.jsp">
		<button>Add Event</button>
	</a>
	<br><br>
	
	<p id="demo"></p>

<script>
	window.onload = function()
	{
		let text = '{"employees":[' +
		'{"firstName":"John","lastName":"Doe" },' +
		'{"firstName":"Anna","lastName":"Smith" },' +
		'{"firstName":"Peter","lastName":"Jones" }]}';

		const obj = JSON.parse(text);
		document.getElementById("demo").innerHTML = obj.employees[1].firstName + " " + obj.employees[1].lastName;
	}
</script>
	
</body>
</html>
