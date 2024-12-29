<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Ideaperson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
List<Register> reg = (List<Register>) session.getAttribute("User");
%>
<%
if (!reg.isEmpty() && reg != null) {
	Iterator<Register> itr = reg.iterator();
	Register regi = null;
	while (itr.hasNext()) {
		regi = (Register) itr.next();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Proposals</title>
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- font awesome for icons -->
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<!-- flex slider css -->
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- animated css  -->
<link href="<%=request.getContextPath()%>/css/animate.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- Revolution Style-sheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/rev-style.css">
<!--owl carousel css-->
<link href="<%=request.getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/owl.theme.css"
	rel="stylesheet" type="text/css" media="screen">
<!--mega menu -->
<link href="<%=request.getContextPath()%>/css/yamm.css" rel="stylesheet"
	type="text/css">
<!--cube css-->
<link href="<%=request.getContextPath()%>/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- custom css-->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">

<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- END META SECTION -->
<style>
label {
	color: black !important;
	/* Ensures that all labels in the form are black */
}

.card {
	border-radius: 1px;
}

.card-header {
	font-weight: bold;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}
</style>
</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg"
	style="background-attachment: fixed;">

	<div class="top-bar-dark">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 hidden-xs">
					<div class="top-bar-socials">
						<a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-facebook">
							<i class="fa fa-facebook"></i> <i class="fa fa-facebook"></i>
						</a> <a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-twitter">
							<i class="fa fa-twitter"></i> <i class="fa fa-twitter"></i>
						</a> <a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-google-plus">
							<i class="fa fa-google-plus"></i> <i class="fa fa-google-plus"></i>
						</a> <a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-linkedin">
							<i class="fa fa-linkedin"></i> <i class="fa fa-linkedin"></i>
						</a> <a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-google-plus">
							<i class="fa fa-youtube"></i> <i class="fa fa-youtube"></i>
						</a> <a href="#"
							class="social-icon-sm si-dark si-gray-round si-colored-dribbble">
							<i class="fa fa-dribbble"></i> <i class="fa fa-dribbble"></i>
						</a>
					</div>
				</div>
				<div class="col-sm-8 text-right">
					<ul class="list-inline top-dark-right">

						<li><a href=""><i class="fa fa-lock"></i> Welcome <%=regi.getUsername()%></a></li>
						<%--                             <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/registration.jsp"><i class="fa fa-user"></i> Sign Up</a></li> --%>
						<%
						}
						}
						%>
						<li><a class="topbar-icons" href="#"><span><i
									class="fa fa-search top-search"></i></span></a></li>
					</ul>
					<div class="search">
						<form role="form">
							<input type="text" class="form-control" autocomplete="off"
								placeholder="Write something and press enter"> <span
								class="search-close"><i class="fa fa-times"></i></span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--top-bar-dark end here-->
	<div class="navbar navbar-default navbar-static-top yamm sticky"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<img src="<%=request.getContextPath()%>/Image/swlogo.jpg"
					style="width: 150px; margin: 0px auto;"
					alt="A Social Online Platform for great ideas and Startups">A
				Social Online Platform for great ideas and Startups
			</div>


		</div>
	</div>



	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h4>Search Proposal</h4>
				</div>
				<div class="col-sm-6 hidden-xs text-right">
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp">Dashboard</a></li>
						<li><a
							href="<%=request.getContextPath()%>/wp-content/Frontend/searchproposal.jsp">Search
								Proposals</a></li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs-->
	<div class="divide80"></div>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-lg-6 col-md-8">
				<div class="card shadow-lg border-0">
					<div class="card-header bg-primary text-white text-center">
						<h3>Search Proposal based on City and Budget</h3>
					</div>
					<div class="card-body">
						<form role="form"
							action="<%=request.getContextPath()%>/Ideapersoncontroller"
							method="post">
							<input type="hidden" name="actionCode" value="search">

							<!-- City Field -->
							<div class="mb-3">
								<label for="city" class="form-label">City <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="city" name="city"
									placeholder="Enter city" required>
							</div>

							<!-- Funding Field -->
							<div class="mb-3">
								<label for="funding" class="form-label">Budget <span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="funding" name="funding"
									placeholder="Enter funding amount" required>
							</div>

							<!-- Submit Button -->
							<div class="text-end">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-search"></i> Search
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



	<br />
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- END CONTENT FRAME -->
	<!-- START SCRIPTS -->
	<!-- START PLUGINS -->
	<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- END PLUGINS -->

	<!-- START THIS PAGE PLUGINS-->
	<script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
	<script type="text/javascript"
		src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

	<script type="text/javascript"
		src="js/plugins/summernote/summernote.js"></script>
	<script type="text/javascript"
		src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap-select.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap-file-input.js"></script>
	<!-- END THIS PAGE PLUGINS-->

	<!-- START TEMPLATE -->
	<script type="text/javascript" src="js/settings.js"></script>

	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/actions.js"></script>




</body>
</html>