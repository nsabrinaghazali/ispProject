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
	<script>
	window.onload = function(){
	var request = new XMLHttpRequest();
	request.open("GET", "https://microsrvs.herokuapp.com/johor", true);
	request.onload = function(){
		var car_obj = JSON.parse(this.response);
		var table = document.create Element('table');
		for(var i = 0; i < car_obj.length; i++){
			var row = table.insertRow(i);
			if(i === 0){
				row.style.fontWeight = 'bold';
				var cell1 = row.insertCell(0).innerHTML = 'IC';
				var cell2 = row.insertCell(1).innerHTML = 'IC';
				var cell3 = row.insertCell(2).innerHTML = 'IC';
				var cell4 = row.insertCell(3).innerHTML = 'IC';
				var cell5 = row.insertCell(4).innerHTML = 'IC';
				var cell6 = row.insertCell(5).innerHTML = 'IC';
				var cell7 = row.insertCell(6).innerHTML = 'IC';
				}
			else{
				var cell1 = row.insertCell(0);
				var cell2 = row.insertCell(1);
				var cell3 = row.insertCell(2);
				var cell4 = row.insertCell(3);
				var cell5 = row.insertCell(4);
				var cell6 = row.insertCell(5);
				var cell7 = row.insertCell(6);
				}
			}
			document.getElementById('table_id').appendChild(table);
		};
		request.send();
	}
</script>
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
	
	<div id ='table_id'></div>
</body>
</html>
