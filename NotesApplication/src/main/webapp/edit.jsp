<%@page import="test.addNoteDAO"%>
<%@page import="test.addNotesBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit notes</title>
<%@include file="All_Contnent/AllCss.jsp"%>
</head>
<body>
	<%
	String noteid = (String) request.getParameter("note_id");
	 addNoteDAO a=new addNoteDAO();
	    addNotesBean d=a.getDataById(noteid);
	      
	%>
	<div class="container-fluid">
		<%@include file="All_Contnent/Navbar.jsp"%>
		<br>
		<h1 class="text-center ">Edit Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="editservlet" method="post">
						<div class="form-group">

							<input type="hidden" value="<%=noteid%>" name="id"> <label
								for="exampleInputEmail1">Enter Title </label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required"
								value="<%=d.getTitle()%>">
						</div>
						<div class="form-group">
							<br> <label for="exampleInputEmail1">Enter Content </label>
							<textarea rows="11" cols="" class="form-control" name="content"
								required="required"> <%=d.getContent()%></textarea>
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
	<br><%@include file="All_Contnent/footer.jsp"%>
</body>
</html>