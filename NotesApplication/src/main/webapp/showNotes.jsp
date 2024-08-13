<%@page import="test.addNotesBean"%>
<%@page import="test.DBConnection"%>
<%@page import="test.addNoteDAO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
UserBean user2 = (UserBean) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login....");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes</title>
<%@include file="All_Contnent/AllCss.jsp"%>
</head>
<body>
	<%@include file="All_Contnent/Navbar.jsp"%>
	 <%
	   String msg=(String)session.getAttribute("msg");
	    if(msg!=null)
	    {%> 
	    	             	<div class="alert alert-success" role="alert"><%=msg%></div>
	    <%	
	     session.removeAttribute("msg");
	    }
	 %>
	  <%
	   String msg2=(String)session.getAttribute("deletemsg");
	    if(msg2!=null)
	    {%> 
	    	             	<div class="alert alert-success" role="alert"><%=msg2%></div>
	    <%	
	     session.removeAttribute("deletemsg");
	    }
	 %>
	<div class="container">

		<h2 class="text-center">All Notes:</h2>

		<div class="row">

			<div class="col-md-12">
				<%
				if (user2 != null) {
					addNoteDAO ad = new addNoteDAO();
					List<addNotesBean> l = ad.getData(user2.getId());
					for (addNotesBean an : l) {
				%>
				<div class="card mt-3">

					<img alt=""
						src="Img/blank-notebook-pen-with-confetti_53876-163258.jpg"
						class="card-img-top mt-3 mx-auto" style="max-width: 100px;">

					<div class="card-body p-4">

						<h5 class="card-title "><%=an.getTitle() %></h5>
						<p><%=an.getContent() %></p>

						<p>

							<b class="text-success">Published By: <%= user2.getUname() %> </b> </br> <b
								class="text-primary"></b>

						</p>

						<div class="container text-center mt-2">

							<a href="delete?note_id=<%=an.getId() %> "class="btn btn-danger">Delete</a>

							<a href="edit.jsp?note_id=<%= an.getId()%>" class="btn btn-primary">Edit</a>

						</div>

					</div>

				</div>


				<%
				}
				}
				%>


			</div>
		</div>
	</div>
	<br>
	 <br>
	
</body>
</html>