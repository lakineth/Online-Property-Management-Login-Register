<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Profile</title>
<style>
*
{

	margin:0;
	padding:0;
}
header{

	height: 125px;
	background-size: cover;
	background-position: center;
}
.Navigation
{
	background-image: url(images/header.jpg);
	height: 130px;
}
.logo{
	float:left;
	margin: 2px 2px;
	padding:7px 10px;
	height:90px;
	border-radius:35%;
}
.menu{
	float: left;
	list-style:none;
	margin:20px ;
	padding:20px 30px;
}
.menu li{
	display: inline-block;
	margin:10px 1px;
}
.menu li a{
	text-decoration:none;
	color:white;
	padding:10px 30px;
	font-family: times-newroman;
	font-size: 92%;
	letter-spacing:0.5px;
	text-align:center;
	
}
.menu li a:hover{
	background:#000;
	transition:.4s;
	color: #fff;
	border-radius:6px;
}
.profile{
	margin:-90px 10px;
	padding:1px 5px;
	float:right;

}
.profile:hover{
	background:black;
	color:blue;
	transition:.4s;
}
.search-form{
	margin-top:-75px;
	float:right;
	margin-right:110px;
	margin-left:80px;
	color:black;
}
input[type=text]{
	padding:8px;
	border:none;
	font-size:16px;
	font-family:sans-serif;
}
button{
	float:right;
	background:orange;
	color:white;
	border-radius:0px 5px 5px 0px;
	cursor:pointer;
	position:relative;
	padding:10px;
	font-family:sans-serif;
	border:none;
	font-size:12px;
}
.dropbtn{
	background-color:green;
	color:white;
	margin:40px -35px;
	padding:10px;
	font-size:16px;
	border-radius:6px;
	cursor:pointer;
}
.dropdown{
	position:bottom;
	display:inline-block;
}
.dropdown-content{
	display:none;
	position:absolute;
	background-color:white;
	min-width:160px;
	box-shadow:0px 8px 16px 0px;
	z-index:1;
}
.dropdown-content a{
	color:black;
	padding:12px 16px;
	text-decoration:none;
	display:block;
}
.dropdown-content a:hover{
	background-color:red;
}
.dropdown:hover .dropdown-content{
	display:block;
}
.dropdown:hover .dropbtn{
	background-color:black;
}
section{
	
    
    background-image: url(images/p.jpg);
	background-size: cover;
	height:590px;
	width:100%;
}
.image1{
     width: 100px;
     border-radius:5px;
     float:right;
     margin-top:-320px;
     margin-right:120px;
}

.content{
    margin-left:0px;
    margin-top:10px;
    
    
}
footer{
	background-image: url(images/footer.jpg);
	width:100%;
	height: 190px;
	font-style:Times-newroman;
}

.follow{
	margin:1px 15px;
	font-size:20px;
	color:white;
}
.social-icons{
	margin:20x 40px;
	text-align:left;
}
.social-icons img{
	width:30px;
	margin: 0 12px;
	box-shadow: 0 0 20px 0 #7f7f7f3d;
	cursor:pointer;
	border-radius:45%;
}	
.table{
    margin-top:50px;
    margin-left:400px;
    width:30%;
    font-family: Hind SemiBold;
}
.edit{
    background-color:white;
	color:green;
}
.delete{
    background-color:white;
    color:red;
}

td{
  padding:15px;
  color:white;
}
h2{
     color:white;
}
</style>


</head>
<body>
<header>
  <div class="Navigation">
  <img src="images/logo.png" width="100" height="120" class="logo">    
	<ul class="menu">
         <li><a href="#">HOME</a></li>
         <li><a href="#">Categories</a></li>
         <li><a href="#">My Bids</a></li>
         <li><a href="#">Contact Us</a></li>
		
	</ul>
	  <div class="dropdown">
	   <button class="dropbtn">Account</button>
	    <div class="dropdown-content">
	     <a href="#">Log In</a>
	     <a href="./logoutservlet">Log Out</a>
	     <a href="#">Register</a>
	    </div>	
	   </div>	
	 	
	 <form class="search-form">
	   <input type="text" placeholder="Search">
	   <button onclick="myFunction()"> Search</button>
	   </form>
	   <a href="#">
	   <img src="..\images\profile.png" width="70px" height="70px" alt="Profile" class="profile" >
	   </a>
	  </div> 
 </header> 
 
 <section>
  

 <div class="content" >
 <h2  align="center" >My Profile </h2><br>
<table class="table">
	<c:forEach var="cust" items="${cusDetails}">
	
	<c:set var="id" value="${cust.id}"/>
	<c:set var="email" value="${cust.email}"/>
	<c:set var="phone" value="${cust.phone}"/>
	<c:set var="fullname" value="${cust.name}"/>
	<c:set var="username" value="${cust.uname}"/>
	<c:set var="password" value="${cust.password}"/>
	
	
	<tr>
		<td><h3>Customer ID:</h3></td>
		<td><h3>${cust.id}</h3></td>
	</tr>
	<tr>
		<td><h3> Email:</h3></td>
		<td><h3>${cust.email}</h3></td>
	</tr>
	<tr>
		<td><h3> Phone Number:</h3></td>
		<td><h3>${cust.phone}</h3></td>
	</tr>
	
	<tr>
		<td> <h3>Full Name:</h3></td>
		<td><h3>${cust.name}</h3></td>
	</tr>
	<tr>
		<td> <h3>UserName:</h3></td>
		<td><h3>${cust.uname}</h3></td>
	</tr>
	<tr>
		<td> <h3>Password:</h3></td>
		<td><h3>${cust.password}</h3></td>
	</tr>
	<tr>
	   <td>
	      <c:url value="Profile.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="fname" value="${fullname}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
			    <br><br><a href="${cusupdate}"><button type="submit" class="edit">Edit Your Details</button></a>
       </td>
	   <td>
	   <c:url value="cusDelete.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="fname" value="${fullname}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}"/>
	</c:url>
			    <br><br><a href="${cusdelete}"><button type="submit" class="delete">Remove Your Account</button></a>
	   </td>
	</tr>		 		 

	</c:forEach>
	</table>
	
 </div>
 </section>
 
 <footer>
 <p align="right" style="font-size:20px">
 <b>Online Property Management Sri Lanka</b></p>
 <p align="center" style="color:red">
 <b>Quick Links:</b><br><br>
 <b><a href="#" style="color:white">HOME</a></b><br>
 <b><a href="#" style="color:white">Categories</a></b><br>
 <b><a href="#" style="color:white">Terms and Conditions</a></b><br>
 <b><a href="#" style="color:white">Contact Us</a></b></p>
 
 <p class="follow" align="left"><b> Follow Us On:</b></p>
<div class="social-icons">
        <a href="#" ><img src="images/fb1.png"></a>
		<a href="#" ><img src="images/tw.png"></a>
		<a href="#" ><img src="images/goo.png"></a>
</div>
 </footer>
</body>
</html>