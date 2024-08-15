<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="wrapper">
		<form action="/LoginDemo/login" method="post">
			<h1>Login</h1>	
			<div class="input-box">
				<input type="text" placeholder="Username" name="uname" required>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="password" required>
		
			</div>
			<div class="remember-forget">
				<label><input type="checkbox">Remember me</label>
				<a href="#">Forgot Password?</a>
			</div>
			<button type="submit" class="btn">Login</button>
			
			<div class="register-link">
				<p>Don't have an account? <a href="register.jsp">Register</a>
			</div>
		</form>
	</div>
</body>
</html>