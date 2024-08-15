<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Videos Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	

	if(session.getAttribute("uname")==null){
		response.sendRedirect("index.jsp");
	}
%>
<div class="wrapper">
		
			<h1>Videos Page</h1>
			<br>
			<br>	
			<br>
			<form action="/LoginDemo/logout">
			<button type="submit" class="btn">Logout</button>
			</form>
			<div class="register-link">
				<p>Want to go to welcome page? <a href="welcome.jsp">Welcome</a>
			</div>
			<br>
			
			
	
	</div>

</body>
</html>