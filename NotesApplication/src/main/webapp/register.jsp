<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
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
						<h4>Registration</h4>
					</div>
					<%
					  String regMsg=(String)session.getAttribute("reg-sucess");
					    if(regMsg !=null){
					    
					    	%>
					    	<div class="alert alert-success" role="alert"><%=regMsg%> Login<a href="login.jsp">Click Here </a></div>
					    	<% 
					    	session.removeAttribute("reg-sucess");
					    }
					%>
						<%
					  String fMsg=(String)session.getAttribute("reg-sucess");
					    if(fMsg !=null){
					    
					    	%>
					    	<div class="alert alert-danger" role="alert"><%=fMsg%></div>
					    	<% 
					    }
					%>
					

					<div class="card-body">

						<form action="registor" method="post">

							<div class="form-group">

								<label>Enter FUll Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uname">

							</div>

							<div class="form-group">

								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
							</div>

							<div class="form-group">

								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="pword">
							</div>


							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>


						</form>
					</div>
				</div>
			</div>
		</div>


	</div>
	<%@include file="All_Contnent/footer.jsp"%>
</body>
</html>