
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddNotes</title>
<%@include file="All_Contnent/AllCss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="All_Contnent/Navbar.jsp"%>
		<br>
		<h1 class="text-center ">Add Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="addNotes" method="post">
						<div class="form-group">
							<%
							UserBean ubean = (UserBean) session.getAttribute("userD");
							%>
							<input type="hidden" value="<%=ubean.getId() %>" name="uid">
							<label for="exampleInputEmail1">Enter Title </label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">
						</div>
						<div class="form-group">
							<br> <label for="exampleInputEmail1">Enter Content </label>
							<textarea rows="11" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>

		</div>

	</div>
    <br>
    <br>
    	<%@include file="All_Contnent/footer.jsp"%>
</body>
</html>