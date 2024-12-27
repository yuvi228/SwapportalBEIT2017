
<%@page import="com.model.Investor"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	List<Investor> list = (List<Investor>) session.getAttribute("Investor");
%>

<%
	List<Register> regg = (List<Register>) session.getAttribute("User");
%>
<%
	if (!regg.isEmpty() && regg != null) {
		Iterator<Register> it = regg.iterator();
		Register regi = null;
		while (it.hasNext()) {
			regi = (Register) it.next();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Entrepreneur Dashboard</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
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
<link
	href="<%=request.getContextPath()%>/cubeportfolio/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- custom css-->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="<%=request.getContextPath()%>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="<%=request.getContextPath()%>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

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
	<div class="navbar navbar-default navbar-static-top" role="navigation">
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
			<!-- 			<li><a -->
			<%-- 				href="<%=request.getContextPath()%>/wp-content/Frontend/ideapersondashboard.jsp"><i --%>
			<!-- 					class="fa fa-dashboard"></i> Dashboard</a></li> -->

			<li><a
				href="<%=request.getContextPath()%>/Controller?actionCode=ideapersonprofile&id=<%=regi.getId()%>"><i
					class="fa fa-cogs"></i>Profile</a></li>

			<li><a
				href="<%=request.getContextPath()%>/Controller?actionCode=uploadidea&id=<%=regi.getId()%>"><i
					class="fa fa-upload"></i>Upload New Idea</a></li>

			<li><a
				href="<%=request.getContextPath()%>/Controller?actionCode=viewIdea&id=<%=regi.getId()%>"><i
					class="fa fa-history"></i> Idea Repository</a></li>
			<li><a
				href="<%=request.getContextPath()%>/Controller?actionCode=getfeedback&id=<%=regi.getId()%>"><i
					class="fa fa-dashboard"></i> Feedback</a></li>

			<%
			}
			}
			%>


		</ul>
	</div>
	<div class="col-md-9">
		<h3 class="title-section">Investor Details</h3>

		<%
		if (!list.isEmpty() && list != null) {
			Iterator<Investor> itr = list.iterator();
			while (itr.hasNext()) {
				Investor inv = itr.next();
		%>

		<div class="row property-listing mb-4">
			<div class="col-sm-4 text-center">
				<div class="image" style="margin-top: 20px;">
					<%
					Integer id = inv.getId();
					%>
					<img
						src="<%=request.getContextPath()%>/wp-content/Frontend/getallinvestorImage.jsp?id=<%=id%>"
						class="img-fluid rounded-circle" alt="Investor Image"
						style="width: 150px; height: 150px;"
						onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/Image/default_image_investor.jpeg';" />

					<div class="profile-controls mt-4" style="margin-top: 20px;">
						<a href="<%=inv.getTw()%>"
							class="profile-control-left twitter me-2"> <span
							class="fa fa-twitter fa-2x"></span>
						</a> <a href="<%=inv.getFb()%>"
							class="profile-control-center facebook me-2"> <span
							class="fa fa-facebook fa-2x"></span>
						</a> <a href="<%=inv.getGg()%>"
							class="profile-control-right googleplus"> <span
							class="fa fa-google-plus fa-2x"></span>
						</a>
					</div>
				</div>
			</div>

			<div class="col-sm-8">
				<div class="bg-light p-3 rounded">
					<table class="table">
						<tbody style="color: black;">
							<tr>
								<td><b>Investor Type</b></td>
								<td><%=inv.getType()%></td>
							</tr>
							<tr>
								<td><b>Investment Limit:</b></td>
								<td><%=inv.getInvestingamount()%></td>
							</tr>
							<tr>
								<td><b>City:</b></td>
								<td><%=inv.getCity()%></td>
							</tr>
							<tr>
								<td><b>Area Of Interest:</b></td>
								<td><%=inv.getAreaofinterest()%></td>
							</tr>


						</tbody>
					</table>
				</div>
			</div>
		</div>

		<hr>

		<%
		}
		}
		%>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!--                        <!--scripts and plugins -->
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


</body>
</html>