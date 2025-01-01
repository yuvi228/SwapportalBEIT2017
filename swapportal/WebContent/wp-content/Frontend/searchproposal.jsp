<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Ideaperson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Proposals</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">


<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon">
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/animate.css"
	rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/rev-style.css">
<link href="<%=request.getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/owl.theme.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/yamm.css" rel="stylesheet"
	type="text/css">
<link
	href="<%=request.getContextPath()%>/cubeportfolio/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
<style>
label {
	color: black !important;
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

	<jsp:include page="header.jsp"></jsp:include>

	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">

			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>

		</ul>
	</div>

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


	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/jquery/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- END PLUGINS -->

	<!-- START THIS PAGE PLUGINS-->
	<script type='text/javascript'
		src='<%=request.getContextPath()%>/js/plugins/icheck/icheck.min.js'></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/summernote/summernote.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/bootstrap/bootstrap-select.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins/bootstrap/bootstrap-file-input.js"></script>
	<!-- END THIS PAGE PLUGINS-->

	<!-- START TEMPLATE -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/settings.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/plugins.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/actions.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>