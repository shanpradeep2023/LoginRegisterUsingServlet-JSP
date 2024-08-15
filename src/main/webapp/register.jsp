<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="wrapper">
		<form action="/LoginDemo/RegisterServlet" method="post">
			<h1>Register</h1>
			<div class="input-box">
				<input type="text" placeholder="Name" name="cname" required>
			</div>	
			<div class="input-box">
				<input type="text" placeholder="Username" name="uname" required>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="password" required>
		
			</div>
			<div class="remember-forget">
				<label><input type="checkbox">Remember me</label>
				
			</div>
			<button type="submit" class="btn">Register</button>
			
			<div class="register-link">
				<p>Already have an account? <a href="index.jsp">Login</a>
			</div>
		</form>
	</div>
</body>
</html>