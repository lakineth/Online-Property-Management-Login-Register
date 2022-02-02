<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Database Data</title>
<style>
* {
	margin: 0;
	padding: 0;
}

header {
	height: 57px;
	background-size: cover;
	background-position: center;
}

.Navigation {
	background-image: url(images/header.jpg);
	height: 130px;
}

.logo {
	float: left;
	margin: 2px 2px;
	padding: 7px 10px;
	height: 90px;
	border-radius: 35%;
}

.menu {
	float: left;
	list-style: none;
	margin: 20px;
	padding: 20px 18px;
}

.menu li {
	display: inline-block;
	margin: 10px 1px;
}

.menu li a {
	text-decoration: none;
	color: #fff;
	padding: 10px 30px;
	font-family: times-newroman;
	font-size: 92%;
	letter-spacing: 0.5px;
	text-align: center;
}

.menu li a:hover {
	background: #DCDCDC;
	transition: 2s;
	color: black;
	border-radius: 6px;
}

.dropbtn {
	background-color: green;
	color: white;
	margin: 10px -35px;
	padding: 10px;
	font-size: 16px;
	border-radius: 6px;
	font-family: Times-newroman;
	cursor: pointer;
}

.dropdown {
	position: bottom;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: red;
	border-radius: 6px;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: black;
}

section {
	margin-top: 73px;
	height: 525px;
	width: 100%;
	background-color: none;
}

.content {
	height: 100%;
	padding: 40px 100px 100px;
}

.title {
	text-align: center;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: left;
	border-bottom: 1 px solid #d3d3d3;
}
</style>


</head>
<body>
	<header>
		<div class="Navigation">
			<img src="images/logo.png" width="100" height="120" class="logo">
			<ul class="menu">
				<li><a href="#">User List</a></li>
			</ul>
		</div>

	</header>
	<section>
		<div class="content">
			<%
String id = request.getParameter("id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "user";
String userId = "root";
String password = "rootlaki";

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
			<h2 class="title">User List</h2>



			<table border="1px">

				<thead>
					<th>ID</th>
					<th>E-mail</th>
					<th>Phone Number</th>
					<th>Full Name</th>
					<th>User Name</th>
					<th>Password</th>
				</thead>
				</tr>
				<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM customer";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
  <tr>

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("fullname") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>

</tr>


<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

			</table>
		</div>
	</section>

</body>
</html>