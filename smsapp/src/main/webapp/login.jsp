<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SMSapp</title>
<link rel="stylesheet" href="login.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<div class="loginBox">
		<img class="user" src="https://i.ibb.co/yVGxFPR/2.png" height="100px"
			width="100px">
		<h3>Sign in here</h3>
		<form action="login">
			<div class="inputBox">
				<input id="uname" type="text" name="Username" placeholder="Username">
				<input id="pass" type="text" name="Password" placeholder="Password">
			</div>
			<input type="submit" name="" value="Login">
		</form>
		<a href="#">Forget Password<br>
		</a>
		<div class="text-center">
			<a href=signup style="color: #59238F;">Sign-Up</a>
		</div>

	</div>



</body>
</html>