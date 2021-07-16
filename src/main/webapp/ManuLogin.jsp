<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Style1.css">
<link rel="stylesheet" href="Style2.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=New+Tegomin&family=Tinos&family=Volkhov:ital,wght@1,700&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script> 
<title>Manufacturer Login</title>
</head>
<body>


<section id="bannerlogin">
	<img src="Images/logo1.png" class="logo">
	<div class="login-form">
		<form action = "login" method = "post">
			<div class="text">
			<h3>Sign In</h3><br><br>
			<p>User Name</p> <input id="size" type ="text" name = "username"> <br>
			<p>Password</p> <input id="size" type ="password" name = "password"> <br>
			<input type = "submit" name = "submit" value = "Login"> 
			</div>
		</form>
	</div>
</section>
</body>
</html>