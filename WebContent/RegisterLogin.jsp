<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Property Management Login Register</title>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
}

.laki {
	height: 110%;
	width: 100%;
	background-image: linear-gradient(rgba(0, 0, 0, 0.45),
		rgba(0, 0, 0, 0.45)), url(images/home1.jpg);
	background-position: center;
	background-size: cover;
	position: absolute;
}

.form-box {
	width: 380px;
	height: 520px;
	position: relative;
	margin: 3% auto;
	background: white;
	padding: 5px;
	overflow: hidden;
}

.button-box {
	width: 220px;
	margin: 35px auto;
	position: relative;
	box-shadow: 0 0 20px 9px #ff61241f;
	border-radius: 30px;
}

.toggle-btn {
	padding: 10px 30px;
	cursor: pointer;
	background: transparent;
	border: 0;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 100%;
	background: linear-gradient(to left, red, pink);
	border-radius: 30px;
	transition: .5s;
}

.social-icons {
	margin: 30px auto;
	text-align: center;
}

.social-icons img {
	width: 30px;
	margin: 0 12px;
	box-shadow: 0 0 20px 0 #7f7f7f3d;
	cursor: pointer;
	border-radius: 40%;
}

.input-group {
	top: 180px;
	position: absolute;
	width: 280px;
	transition: .5s;
}

.input-field {
	width: 100%;
	padding: 10px 0;
	margin: 5px 0;
	border-left: 0;
	border-top: 0;
	border-right: 0;
	border-bottom: 0;
	border-bottom: 1px solid #999;
	outline: none;
	background: transparent;
}

.submit-btn {
	width: 85%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border: 0;
	outline: none;
	border-radius: 30px;
}

.check-box {
	margin: 30px 10px 30px 0;
	cursor: pointer;
}

.forgot {
	margin: 25px 5px;
	float: left;
	cursor: pointer;
	font-size: 15px;
}

span {
	color: #777;
	font-size: 12px;
	bottom: 68px;
	position: absolute;
}

#login {
	left: 50px;
}

#register {
	left: 450px;
}
</style>

</head>
<body>
<div class="laki">
		<div class="form-box">
			<div class="button-box">
				<div id="btn"></div>
				<button type="button" class="toggle-btn" onclick="login()">Log
					In</button>
				<button type="button" class="toggle-btn" onclick="register()">Register</button>
			</div>
			<div class="social-icons">

				<a href="#"><img src="images/fb1.png"></a> <a href="#"><img
					src="images/tw.png"></a> <a href="#"><img
					src="images/goo.png"></a>
			</div>
			<form action="log" method="post" id="login" class="input-group">
				<input type="text" name="uname" class="input-field" placeholder="User Name"
					required> <input type="password" name="password" class="input-field"
					placeholder="Password" required> <a href="#">
					<p class="forgot">
						<u>Forgot Password</u>
					</p>
				<a href="#"></a>
					<button type="submit" class="submit-btn">Log In</button>
				</a>
			</form>
			<form  method="post"action="register" id="register" class="input-group">
				<input type="email" name="email" class="input-field" placeholder="Email" required>
				<input type="number" name="phone" class="input-field" placeholder="Phone Number"
					required><input type="text" name="name"class="input-field"
					placeholder="Full name" required> <input type="text" name="uname"class="input-field"
					placeholder="User Name" required> <input type="password" name="password"
					class="input-field" placeholder="Password" required> <input
					type="checkbox" class="check-box"><span>Agree to
					Terms and Condition</span> 
					<button type="submit" class="submit-btn">Register</button>
			
			</form>
		</div>
	</div>
	<script>
		var x = document.getElementById("login");
		var y = document.getElementById("register");
		var z = document.getElementById("btn");

		function register() {
			x.style.left = "-400px";
			y.style.left = "50px";
			z.style.left = "110px";
		}
		function login() {
			x.style.left = "50px";
			y.style.left = "450px";
			z.style.left = "0px";
		}
	</script>
</body>
</html>