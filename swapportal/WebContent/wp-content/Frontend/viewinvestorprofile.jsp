<%@ page import="com.model.Investor"%>
<%@ page import="com.model.Register"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
// Retrieve session attributes
List<Investor> inv = (List<Investor>) session.getAttribute("invprofile");
List<Register> reg = (List<Register>) session.getAttribute("User");

// Ensure the lists are non-null and non-empty
boolean hasUser = (reg != null && !reg.isEmpty());
boolean hasInvestor = (inv != null && !inv.isEmpty());
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Investor Profile</title>
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
</head>

<body background="<%=request.getContextPath()%>/Image/bg.jpg"
	style="background-attachment: fixed;">
	<div class="top-bar-dark">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 text-right">
					<ul class="list-inline top-dark-right">
						<li><a href="#"><i class="fa fa-lock"></i> Welcome <%=hasUser ? reg.get(0).getUsername() : "Guest"%></a></li>
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

	<div class="navbar navbar-default navbar-static-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<img src="<%=request.getContextPath()%>/Image/swlogo.jpg"
					style="width: 150px; margin: 0px auto;"
					alt="A Social Online Platform for great ideas and Startups">
				A Social Online Platform for great ideas and Startups
			</div>
		</div>
	</div>

	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/Investorcontroller?actionCode=editinvestor&id=<%=hasUser ? reg.get(0).getId() : ""%>"><i
					class="fa fa-cogs"></i> Edit Profile</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/searchproposal.jsp"><i
					class="fa fa-search"></i> Search Proposal</a></li>
		</ul>
	</div>

	<div class="col-md-9" style="margin-top: 10px;">
		<div class="panel panel-default">
			<div class="panel-body profile"
				style="background: url('assets/images/gallery/music-4.jpg') center center no-repeat;">

				<div class="profile-image" style="border-radius: 50%; float: left;">
					<%
					if (hasUser) {
						Register regi = reg.get(0); // Get the first user
						Integer id = regi.getId();
					%>
					<img
						src="<%=request.getContextPath()%>/Investorcontroller?actionCode=getallinvestorImage&id=<%=id%>&format=jpg"
						style="width: 150px; height: 150px; margin: 0px auto;">

					<div class="profile-data-name">
						<h3><%=regi.getName()%></h3>
					</div>
				</div>

				<div class="profile-data" style="float: left; margin-left: 100px">
					<div class="profile-data-name">
						<h4>
							<i>Phone:-</i><%=regi.getPhone()%></h4>
					</div>
					<div class="profile-data-title">
						<h4>
							<i>Email:-</i><%=regi.getEmail()%></h4>
					</div>
				</div>
				<%
				}
				%>

				<div class="profile-data" style="float: right; margin-right: 100px;">
					<%
					if (hasInvestor) {
						Investor inve = inv.get(0); // Get the first investor
					%>
					<div class="profile-data-name">
						<h4>
							<i>Type:-</i><%=inve.getType()%></h4>
					</div>
					<div class="profile-data-title">
						<h5>
							<i>Area Of Interest:-</i><%=inve.getAreaofinterest()%></h5>
					</div>
					<div class="profile-controls">
						<a href="<%=inve.getTw()%>" class="profile-control-left twitter"><span
							class="fa fa-twitter fa-2x"></span></a>&nbsp;&nbsp;&nbsp; <a
							href="<%=inve.getFb()%>" class="profile-control-center facebook"><span
							class="fa fa-facebook fa-2x"></span></a>&nbsp;&nbsp;&nbsp; <a
							href="<%=inve.getGg()%>" class="profile-control-right googleplus"><span
							class="fa fa-google-plus fa-2x"></span></a>
					</div>
				</div>

				<center>
					<font color="black">
						<table style="border-style: solid;" width="100%" cellspacing="100">
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Registered ID</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getId()%></label></td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Investing
										Amount</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getInvestingamount()%></label></td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Address1</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getAddress1()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Address2</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getAddress2()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Street</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getStreet()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">City</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getCity()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Country</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inve.getCountry()%></label></td>
							</tr>
						</table>
					</font>
				</center>
				<%
				}
				%>
			</div>
		</div>
	</div>

	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/script.js"></script>
</body>
</html>
