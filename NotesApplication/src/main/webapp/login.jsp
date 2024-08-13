<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file="All_Contnent/AllCss.jsp"%>
</head>
<body>
	<%@include file="All_Contnent/Navbar.jsp"%>
	<div class="continer-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">

					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus" aria-hidden="true"></i>
						<h4>Login Page</h4>
					</div>
					<%
					   String invalidMsg=(String)session.getAttribute("login-failed");
					   if(invalidMsg !=null)
					   {
						%>
						<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
						<%
						session.removeAttribute("login-failed");
					   }
					%>
                     <%
                     String withoutLogin=(String)session.getAttribute("login-error");
                     if(withoutLogin!=null)
                     {
                    	%>
                    	<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
                    	<% 
                    	
                    	session.removeAttribute("login-error");
                     }
                     %>
                             <%
                     String logout=(String)session.getAttribute("logout");
                     if(logout!=null)
                     {
                    	%>
                    	<div class="alert alert-success" role="alert"><%=logout%></div>
                    	<% 
                    	
                    	session.removeAttribute("logout");
                     }
                     %>
					<div class="card-body">
						
							<form action="login" method="post">

								<div class="form-group">

									<label>Enter Email</label> 
									<input type="email"
										class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="email" > </div>

									<div class="form-group">

										<label for="exampleInputPassword1">Enter Password</label> 
										<input type="password" class="form-control" id="exampleInputPassword1" name="pword">
									</div>

									
									<button type="submit" class="btn btn-primary badge-pill btn-block">Login </button>

									
							</form>
						</div>
					</div>
				</div>
			</div>


		</div>
		<%@include file="All_Contnent/footer.jsp" %>
		<%
		  session.removeAttribute("userD");
		
		%>
</body>
</html>