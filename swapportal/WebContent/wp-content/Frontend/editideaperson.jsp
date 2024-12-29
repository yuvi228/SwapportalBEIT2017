<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Ideaperson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
  Ideaperson ideaperson = (Ideaperson) session.getAttribute("Ideapersondetails");
%>

<%
   				Register regi = (Register) session.getAttribute("Userdetails");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit your profile</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico"
	type="image/x-icon" />
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- font awesome for icons -->
<link
	href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<!-- flex slider css -->
<link href="<%=request.getContextPath() %>/css/flexslider.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- animated css  -->
<link href="<%=request.getContextPath() %>/css/animate.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- Revolution Style-sheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/rev-style.css">
<!--owl carousel css-->
<link href="<%=request.getContextPath() %>/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath() %>/css/owl.theme.css"
	rel="stylesheet" type="text/css" media="screen">
<!--mega menu -->
<link href="<%=request.getContextPath() %>/css/yamm.css"
	rel="stylesheet" type="text/css">
<!--cube css-->
<link
	href="<%=request.getContextPath() %>/cubeportfolio/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- custom css-->
<link href="<%=request.getContextPath() %>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

<style>
label {
	color: black !important;
	/* Ensures that all labels in the form are black */
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

						<li><a href=""><i class="fa fa-lock"></i> Welcome As <%=regi.getUsername()%></a></li>

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
					<h4>Idea person profile</h4>
				</div>
				<div class="col-sm-6 hidden-xs text-right">
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/wp-content/Frontend/ideapersondashboard.jsp">Dashboard</a></li>
						<li>Idea person profile</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs-->
	<div class="divide80"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
				<div class="login-form">
					<h3>
						<span>Idea person profile</span>
					</h3>
					<form role="form"
						action="<%=request.getContextPath()%>/Ideapersoncontroller?ipid=<%=ideaperson.getIpid()%>&id=<%=ideaperson.getId()%>"
						method="post" name="ideaperson" onsubmit="return validate()"
						enctype="multipart/form-data">
						<input type="hidden" name="actionCode" value="updateIdeaperson">

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Register
								Id<font color=red>*</font>
							</label> <input type="text" Disabled class="form-control" name="id"
								value="<%=ideaperson.getId()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Select
								your type<font color=red>*</font>
							</label> <select class="form-control select" name="st">
								<option>Select Type</option>
								<option value="Individual"
									<%="Individual".equals(ideaperson.getType()) ? "selected" : ""%>>Individual</option>
								<option value="Individual"
									<%="Company".equals(ideaperson.getType()) ? "selected" : ""%>>Company</option>
							</select>
						</div>


						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">About You
								<font color=red>*</font>
							</label>
							<textarea class="form-control" rows="5" name="aboutyou"><%=ideaperson.getAboutyou()%></textarea>
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Project
								Abstract<font color=red>*</font>
							</label>
							<textarea class="form-control" rows="5" name="pa"><%=ideaperson.getProjectabstract()%></textarea>
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Expect
								Fund<font color=red>*</font>
							</label> <input type="text" class="form-control" name="expfund"
								value="<%=ideaperson.getExpectfund()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline1<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs1" value="<%=ideaperson.getAddress1()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline2<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs2" value="<%=ideaperson.getAddress2()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Street<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="street" value="<%=ideaperson.getStreet()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">City<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="city" value="<%=ideaperson.getCity()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Country<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="country" value="<%=ideaperson.getCountry()%>" />
						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Facebook_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="fb" value="<%=ideaperson.getFb()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Twitter_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="tw" value="<%=ideaperson.getTw()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Google+_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="gg" value="<%=ideaperson.getGg()%>" />
						</div>

						<button type="submit" class="btn btn-theme-bg">Update</button>
						<!--                         <a href="#" class="btn btn-fb-login"><i class="fa fa-facebook"></i> Login With Facebook</a> -->
						<!--                         <a href="#">Forget Password?</a> -->


					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="divide60"></div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!--scripts and plugins -->
	<!--must need plugin jquery-->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<!--bootstrap js plugin-->
	<script
		src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!--easing plugin for smooth scroll-->
	<script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.min.js"
		type="text/javascript"></script>
	<!--sticky header-->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.sticky.js"></script>
	<!--flex slider plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"
		type="text/javascript"></script>
	<!--parallax background plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"
		type="text/javascript"></script>
	<!--digit countdown plugin-->
	<script src="<%=request.getContextPath()%>/js/waypoints.min.js"></script>
	<!--digit countdown plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.counterup.min.js"
		type="text/javascript"></script>
	<!--on scroll animation-->
	<script src="<%=request.getContextPath()%>/js/wow.min.js"
		type="text/javascript"></script>
	<!--owl carousel slider-->
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"
		type="text/javascript"></script>
	<!--popup js-->
	<script
		src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<!--you tube player-->
	<script
		src="<%=request.getContextPath()%>/js/jquery.mb.YTPlayer.min.js"
		type="text/javascript"></script>


	<!--customizable plugin edit according to your needs-->
	<script src="<%=request.getContextPath()%>/js/custom.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/ideaperosn.js"
		type="text/javascript"></script>



</body>
</html>