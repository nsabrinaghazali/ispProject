<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event List</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	background-color: #C7BBBC;
	color: #555555;
	max-width: 900px;
	margin: auto;
	text-align: center;
}

table {
	background-color: #F0EaD7;
	text-align: center;
	margin-left: 5px;
	margin-right: 5px;
	border-collapse: collapse;
	border-width: 3px;
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
	color: #555555;
}
</style>
</head>
<body>
	<h1>EVENT MANAGEMENT SYSTEM</h1>
	<h2>Event List</h2>
	<hr>
	<a href="addEvent.jsp">
		<button>Add Event</button>
	</a>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>EVENT NAME</th>
			<th>EVENT TYPE</th>
			<th>NO OF PARTICIPANT</th>
			<th colspan="3">ACTION</th>
		</tr>
			<tr>
				<td> 101 </td>
				<td>COLOURING CONTEST</td>
				<td>COMPETITION</td>
				<td>25</td>
				<td><button class="btn btn-primary" >View</button></td>
				<td><a href="updateEvent.jsp"><button class="btn btn-primary" >Edit</button></a></td>
				<td><button class="btn btn-danger" onclick="confirmation(id)">Delete</button></td>
			</tr>
			<tr>
				<td> 102 </td>
				<td> GOTONG ROYONG PERDANA </td>
				<td> COMMUNITY SERVICE </td>
				<td> 50 </td>
				<td><button class="btn btn-primary" >View</button></td>
				<td><a href="updateEvent.jsp"><button class="btn btn-primary" >Edit</button></a></td>
				<td><button class="btn btn-danger" onclick="confirmation(id)">Delete</button></td>
			</tr>
			<tr>
				<td> 103 </td>
				<td>HOW TO ATTAIN PEACEFUL MIND</td>
				<td>LECTURE</td>
				<td>32</td>
				<td><button class="btn btn-primary" >View</button></td>
				<td><a href="updateEvent.jsp"><button class="btn btn-primary" >Edit</button></a></td>
				<td><button class="btn btn-danger" onclick="confirmation(id)">Delete</button></td>
			</tr>
	</table>
	<script>
	function confirmation(id)
	{
		console.log(id);
		var r = confirm("Are you sure you want to delete?");
		if(r == true)
			{
			location.href = 'listEvent2.jsp' + id;
			alert("Event successfuly deleted");
			}
		else
			{
			return false;
			}
	}
	</script>

</body>
</html>
