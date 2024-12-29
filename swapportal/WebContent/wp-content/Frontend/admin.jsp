<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<!-- Stylesheets -->
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet">
</head>
<body style="background-attachment: fixed;"
	background="<%=request.getContextPath()%>/Image/bg.jpg">



	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h4>Admin Dashboard</h4>
				</div>
			</div>
		</div>
	</div>

	<!-- Admin Dashboard -->
	<main class="container text-center">
		<table class="table table-bordered" align="center" width="60%">
			<tr>
				<td><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/registration.jsp"><i
						class="fa fa-user-plus fa-5x"></i><br>Add User</a></td>
				<td><a
					href="<%=request.getContextPath()%>/Authcontroller?actionCode=getalluser"><i
						class="fa fa-pencil fa-5x"></i><br>Manage User</a></td>
			</tr>
			<tr>
				<td><a
					href="<%=request.getContextPath()%>/Ideapersoncontroller?actionCode=getallIdeaperson"><i
						class="fa fa-dashboard fa-5x"></i><br>Idea Person Profiles</a></td>
				<td><a
					href="<%=request.getContextPath()%>/Ideapostcontroller?actionCode=ListOfIdeasOfAllUsers"><i
						class="fa fa-cogs fa-5x"></i><br>Manage Ideas</a></td>
			</tr>
			<tr>
				<td><a
					href="<%=request.getContextPath()%>/Investorcontroller?actionCode=getallInvestor"><i
						class="fa fa-users fa-5x"></i><br>Investor Profiles</a></td>
				<td><a
					href="<%=request.getContextPath()%>/Feedbackcontroller?actionCode=getallfeedback"><i
						class="fa fa-comments fa-5x"></i><br>Feedback Management</a></td>
				<td><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/emailcompose.jsp"><i
						class="fa fa-envelope fa-5x"></i><br>Mail</a></td>
			</tr>
		</table>
	</main>
</body>
</html>
