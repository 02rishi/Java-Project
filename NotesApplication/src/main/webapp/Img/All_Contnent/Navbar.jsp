<%@page import="test.UserBean"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="#"><i class="fa fa-book"
		aria-hidden="true"></i>E Notes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fa fa-home" aria-hidden="true"></i>Home <span
					class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-plus-circle" aria-hidden="true"></i>Add Note</a></li>

			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-address-book" aria-hidden="true"></i>Show Note</a></li>
		</ul>
		<%
		UserBean ub = (UserBean) session.getAttribute("userD");
		if (ub != null) {
		%>
		<a class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal"
			data-target="#exampleModal" type="submit"><i
			class="fa fa-user-circle-o" aria-hidden="true"></i> <%=ub.getUname()%></a>
		<a class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa fa-user-plus" aria-hidden="true"></i>Logout</a>
				<!-- Button trigger modal -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">User Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<i class="fa fa-user fa-3x"></i>
						<h5></h5>

						<table class="table">

							<tbody>

								<tr>

									<th>User Id</th>

									<td>
										<%= ub.getId() %>
									</td>

								</tr>

								<tr>

									<th>Full Name</th>

									<td>
										<%=ub.getUname()

										%>
									</td>

								</tr>

								<tr>

									<th>Email Id</th>

									<td>
										<%=ub.getMail()%>
									</td>

								</tr>

							</tbody>

						</table>
						<div>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
						...
					</div>

				</div>
			</div>
		</div>
	</div>

		<%
		session.removeAttribute("userD");
		}

		else {
		%>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
			type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
		<a href="register.jsp" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>

		<%
		}
		%>



	</div>

</nav>