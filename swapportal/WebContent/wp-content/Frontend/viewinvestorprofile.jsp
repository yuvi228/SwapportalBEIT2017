<%@ page import="com.model.Investor"%>
<%@ page import="com.model.Register"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
// Retrieve session attributes
Investor inv = (Investor) session.getAttribute("Investordata");
Register reg = (Register) session.getAttribute("Userdata");
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

	<jsp:include page="header.jsp"></jsp:include>



	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/Investorcontroller?actionCode=editinvestor&id=<%=reg.getId()%>"><i
					class="fa fa-cogs"></i> Edit Profile</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>

		</ul>
	</div>

	<div class="col-md-9" style="margin-top: 10px;">
		<div>
			<div class="panel-body profile"
				style="background: url('assets/images/gallery/music-4.jpg') center center no-repeat;">

				<div class="profile-image" style="border-radius: 50%; float: left;">

					<img
						src="<%=request.getContextPath()%>/Investorcontroller?actionCode=getallinvestorImage&id=<%=reg.getId()%>&format=jpg"
						style="width: 150px; height: 150px; margin: 0px auto;">

					<div class="profile-data-name">
						<h3><%=reg.getName()%></h3>
					</div>
				</div>

				<div class="profile-data" style="float: left; margin-left: 100px">
					<div class="profile-data-name">
						<h4>
							<i>Phone:-</i><%=reg.getPhone()%></h4>
					</div>
					<div class="profile-data-title">
						<h4>
							<i>Email:-</i><%=reg.getEmail()%></h4>
					</div>
				</div>


				<div class="profile-data" style="float: right; margin-right: 100px;">

					<div class="profile-data-name">
						<h4>
							<i>Type:-</i><%=inv.getType()%></h4>
					</div>
					<div class="profile-data-title">
						<h5>
							<i>Area Of Interest:-</i><%=inv.getAreaofinterest()%></h5>
					</div>
					<div class="profile-controls">
						<a href="<%=inv.getTw()%>" class="profile-control-left twitter"><span
							class="fa fa-twitter fa-2x"></span></a>&nbsp;&nbsp;&nbsp; <a
							href="<%=inv.getFb()%>" class="profile-control-center facebook"><span
							class="fa fa-facebook fa-2x"></span></a>&nbsp;&nbsp;&nbsp; <a
							href="<%=inv.getGg()%>" class="profile-control-right googleplus"><span
							class="fa fa-google-plus fa-2x"></span></a>
					</div>
				</div>

				<center>
					<font color="black">
						<table style="border-style: solid;" width="100%" cellspacing="100">
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">User ID</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getId()%></label></td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Investing
										Amount</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getInvestingamount()%></label></td>
							</tr>
							<tr>
								<td width="20%" align="right"><label
									class="col-md-12 col-xs-12 control-label">Address1</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getAddress1()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Address2</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getAddress2()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Street</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getStreet()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">City</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getCity()%></label></td>
							</tr>
							<tr>
								<td align="right"><label
									class="col-md-12 col-xs-12 control-label">Country</label></td>
								<td><label class="col-md-12 col-xs-12 control-label"><%=inv.getCountry()%></label></td>
							</tr>
						</table>
					</font>
				</center>

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
