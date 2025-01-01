
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Base64"%>
<%@page import="com.model.Ideaperson"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	List<Ideaperson> ideaperson = (List<Ideaperson>) session.getAttribute("Ideapersonlist");
if (ideaperson == null) {
    ideaperson = new ArrayList<>(); // Use an empty list as a fallback
}
%>

<%
	Register reg = (Register) session.getAttribute("Userdetails");
if (reg == null) {
    out.println("<h3>Error: User details not found. Please log in again.</h3>");
    return; // Stop further processing of the JSP
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Investor Dashboard</title>
<!-- Bootstrap -->
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

<style>
body {
	font-family: 'Roboto', sans-serif;
}

.navbar {
	margin-bottom: 20px;
}

.card {
	margin-bottom: 20px;
}

.card img {
	max-width: 100%; /* Ensure the image is responsive */
	max-height: 200px; /* Adjust the height of the image */
	object-fit: cover;
	/* Ensure the image covers the area without distortion */
}
</style>

</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg"
	style="background-attachment: fixed;">

	<jsp:include page="header.jsp"></jsp:include>

	<div class="col-sm-3">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/Investorcontroller?actionCode=investorprofile&id=<%=reg.getId()%>"><i
					class="fa fa-cogs"></i> Profile</a></li>

			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/searchproposal.jsp"><i
					class="fa fa-search"></i> Search Proposal</a></li>
			<li><a
				href="<%=request.getContextPath()%>/Feedbackcontroller?actionCode=getfeedback&id=<%=reg.getId()%>"><i
					class="fa fa-search"></i> Feedback</a></li>
			<li><a
				href="<%=request.getContextPath()%>/Authcontroller?actionCode=logout&id=<%=reg.getId()%>"><i
					class="fa fa-dashboard"></i> Logout</a></li>
		</ul>
	</div>



	<div class="col-md-9">
		<h3 class="title-section">Idea Proposals</h3>
		<div class="row">
			<%
			if (ideaperson != null && !ideaperson.isEmpty()) {
				Iterator<Ideaperson> it = ideaperson.iterator();
				Ideaperson pos = null;
				while (it.hasNext()) {
					pos = (Ideaperson) it.next();
					Integer id = pos.getId();
			%>

			<%
			if (id != null) {
			%>
			<div class="col-sm-4 mb-4">
				<div class="card h-100">
					<img
						src="<%=request.getContextPath()%>/Ideapersoncontroller?actionCode=getallideapersonImage&id=<%=id%>&format=jpg"
						class="card-img-top" alt="Idea Image"
						style="object-fit: cover; height: 200px;"
						onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/Image/default_image_idea.png';" />
					<div class="card-body">
						<h5 class="card-title"><%=pos.getProjectabstract()%></h5>
						<p class="card-text"><%=pos.getAboutyou()%></p>
					</div>
					<div class="card-footer text-muted">
						Expected Fund:
						<%=pos.getExpectfund()%>
					</div>
				</div>
			</div>
			<%
			}
			%>

			<%
			}
			}
			%>
		</div>
	</div>



	<hr>



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