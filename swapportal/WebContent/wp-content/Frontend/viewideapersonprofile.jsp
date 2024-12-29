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
   				Register regg = (Register) session.getAttribute("Userdetails");
   				%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Idea person Profile</title>
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
</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg">
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

						<li><a href=""><i class="fa fa-lock"></i> Welcome <%=regg.getUsername()%></a></li>
						<%--                             <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/registration.jsp"><i class="fa fa-user"></i> Sign Up</a></li> --%>
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



	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/Ideapersoncontroller?actionCode=editideaperson&id=<%=regg.getId()%>"><i
					class="fa fa-user"></i>Edit Profile</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/ideapersondashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>

		</ul>
	</div>

	<div class="col-md-9" style="margin-top: 10px;">

		<div class="panel panel-default">
			<div class="panel-body profile"
				style="background: url('assets/images/gallery/music-4.jpg') center center no-repeat;">

				<div class="profile-image" style="border-radius: 50%; float: left;">
					<%
					Integer id = regg.getId();
					%>
					<img height="80px" width="180px"
						src="<%=request.getContextPath()%>/Ideapersoncontroller?actionCode=getallideapersonImage&id=<%=id%>&format=jpg"
						" alt="">
					<div class="profile-data-name">
						<h3><%=regg.getName()%></h3>
					</div>
				</div>
				<div class="profile-data" style="float: left; margin-left: 100px">

					<div class="profile-data-name">
						<h4>
							<i>Phone:-</i>
							<%=regg.getPhone()%></h4>
					</div>
					<div class="profile-data-title">
						<h4>
							<i>Email:-</i>
							<%=regg.getEmail()%></h4>
					</div>
				</div>

				<div class="profile-data" style="float: right; margin-right: 100px;">





					<div class="profile-data-name">
						<h4>
							<i>Type:-</i>
							<%=ideaperson.getType()%></h4>
					</div>
					<%--                                         <div class="profile-data-title"><%=inve.getAreaofinterest() %></div> --%>
					<div class="profile-controls">
						<a href="<%=ideaperson.getTw()%>"
							class="profile-control-left twitter"><span
							class="fa fa-twitter fa-2x"></span></a>&nbsp; &nbsp;&nbsp; <a
							href="<%=ideaperson.getFb()%>"
							class="profile-control-center facebook"><span
							class="fa fa-facebook fa-2x"></span></a>&nbsp; &nbsp;&nbsp; <a
							href="<%=ideaperson.getGg()%>"
							class="profile-control-right googleplus"><span
							class="fa fa-google-plus fa-2x"></span></a>
					</div>
				</div>


				<br> <br>
				<center>
					<font color="black">
						<table style="border-style: solid;" width="100%" cellspacing="100">
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label"> Registered
										ID</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getId()%></label>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">About You</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getAboutyou()%></label>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Project
										Abstract</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getProjectabstract()%></label>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Expected
										Funding</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getExpectfund()%></label>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Address1</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getAddress1()%></label>
								</td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Address2</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getAddress2()%></label>
								</td>
							</tr>

							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Street</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getStreet()%></label>
								</td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">City</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getCity()%></label>
								</td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Country</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=ideaperson.getCountry()%></label>
								</td>
							</tr>

						</table>
					</font>
				</center>

			</div>
		</div>

	</div>


	<jsp:include page="footer.jsp"></jsp:include>


	<!--scripts and plugins -->
	<!--must need plugin jquery-->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<!--bootstrap js plugin-->
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"
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
	<script src="<%=request.getContextPath()%>/js/ideaperson.js"
		type="text/javascript"></script>

</body>








</html>