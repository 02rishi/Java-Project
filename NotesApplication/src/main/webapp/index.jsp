<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("Img/notepad-1558811_1280.jpg");
	width: 100%;
	height: 100vh;
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	background-attachment: fix;
}
</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="All_Contnent/AllCss.jsp"%>
<%@include file="All_Contnent/Navbar.jsp"%>
</head>
<body>
	<div class="container-fluid back-img">
	<div class="text-center">
	<h1 class="text-white"><i class="fa fa-book" aria-hidden="true"></i>E Notes-save your Notes</h1>
	<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
	<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register></a>
	</div>
	</div>
	<%@include file="All_Contnent/footer.jsp" %>
	
	<%
	// session.removeAttribute("userD");
	
	%>
 
</body>
</html>