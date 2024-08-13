<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<% 
	  UserBean usb2=(UserBean)session.getAttribute("userD");
	   if(usb2==null)
	   {
		   response.sendRedirect("login.jsp");
		   session.setAttribute("login-error", "please Login..");
	   }
	%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="All_Contnent/AllCss.jsp" %>
</head>
<body>

<div class="container-fluid" >
	<%@include file="All_Contnent/Navbar.jsp"%>
		<div class="card py-5">
			<div class="card-body text-center py-5">
				<img alt="" src="Img/blank-notebook-pen-with-confetti_53876-163258.jpg" class="img-fluid mx-auto" style="width: 520px">
				<h1>START TAKING YOUR NOTES</h1>
				<a href="addnotes.jsp" class="btn btn-outline-primary">Start Here</a>
			</div>
		</div>
	</div>
	<%@include file="All_Contnent/footer.jsp" %>
</body>
</html>