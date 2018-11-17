<!-- we have to add the tag library from the address bellow -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Date date = new Date();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="description" content="Free Web tutorials">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Hege Refsnes">
<!-- <meta http-equiv="refresh" content="5"> -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<title>Course Page</title>

<!-- <style type="text/css">
body {
	background-color: #ffffff;
}

h1 {
	color: blue;
}

p {
	color: green;
}

ul#menu li {
	display: inline;
}

ul#menu li a {
	background-color: black;
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
	background-color: orange;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}

.btn {
	display: inline-block;
	background-color: #f44336;
	color: #FFFFFF;
	padding: 14px 25px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	margin-left: 20px;
	opacity: 0.9;
}

footer {
	position: fixed;
	width: 100%;
	top: 20;
	background: black;
	color: white;
	text-align: center;
	padding: 5px;
	background: black;
}
</style> -->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">A2J</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">java</a></li>
				<li><a href="#">CSS 3</a></li>
				<li><a href="#">JavaScript</a></li>
			</ul>
		</div>
	</nav>


	<div class="container" style="margin-top: 50px">

		<h1>Hello ${name}</h1>
		<div>
			your course list are given bellow:<br>
			<div>
				<table class="table table-striped">

					<tr>
						<th>Course Name</th>
						<th>price</th>
						<th>Options</th>
					</tr>
					<c:forEach items="${courses}" var="course">
						<tr>
							<td>${course.name}</td>
							<td>${course.price}</td>
							<td><a
								href="deleteCourse.do?name=${course.name}&price=${course.price}"
								class="btn">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>

		<div><%=date%></div>
		<form action="\course.do" method="post">
			<input type="text" name="newTodo"> <input type="number"
				name="price"> <input type="submit">
		</form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
<footer> Copyright � a2j.com </footer>
</html>


<!-- valid user  -> welcome .jsp -->
<!-- invalid user -> ligin.jsp -->