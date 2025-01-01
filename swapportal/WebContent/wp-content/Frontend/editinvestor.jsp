<%@page import="com.model.Register"%>
<%@page import="com.model.Investor"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
  Investor inv = (Investor) session.getAttribute("Investordata");
  %>

<%
  Register reg = (Register) session.getAttribute("Userdata");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Investor</title>
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
<body background="<%=request.getContextPath()%>/Image/bg.jpg">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">

			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>

		</ul>
	</div>
	<div class="divide80"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
				<div class="login-form">
					<h3>
						<span> Edit Investor profile</span>
					</h3>


					<form role="form"
						action="<%=request.getContextPath()%>/Investorcontroller?iid=<%=inv.getIid()%>&id=<%=inv.getId()%>"
						method="post" name="investor" onsubmit="return validate()"
						enctype="multipart/form-data">
						<input type="hidden" name="actionCode" value="updateInvestor">

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Register
								Id<font color=red>*</font>
							</label> <input type="text" Disabled class="form-control" name="regid"
								value="<%=inv.getId()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Name<font
								color=red>*</font></label> <input type="text" Disabled
								class="form-control" name="name" value="<%=reg.getName()%>" />
						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Select
								your type<font color=red>*</font>
							</label> <select class="form-control select" name="st">
								<option>Select Type</option>
								<option value="Individual"
									<%="Individual".equals(inv.getType()) ? "selected" : ""%>>Individual</option>
								<option value="Company"
									<%="Company".equals(inv.getType()) ? "selected" : ""%>>Company</option>
							</select>
						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Area of
								Interest<font color=red>*</font>
							</label> <select class="form-control select" name="aoi">
								<option>Select Industry</option>

								<option value="Computer Hardware"
									<%="Computer Hardware".equals(inv.getAreaofinterest()) ? "selected" : ""%>>Computer
									Hardware</option>
								<option value="Computer Software"
									<%="Computer Software".equals(inv.getAreaofinterest()) ? "selected" : ""%>>Computer
									Software</option>

							</select>

						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Investing
								Amount<font color=red>*</font>
							</label> <input type="text" class="form-control" name="inam"
								value="<%=inv.getInvestingamount()%>" />
						</div>


						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline1<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs1" value="<%=inv.getAddress1()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline2<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs2" value="<%=inv.getAddress2()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Street<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="street" value="<%=inv.getStreet()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">City<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="city" value="<%=inv.getCity()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Country<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="country" value="<%=inv.getCountry()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Map<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="mp" value="<%=inv.getMap()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Facebook_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="fb" value="<%=inv.getFb()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Twitter_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="tw" value="<%=inv.getTw()%>" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Google+_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="gg" value="<%=inv.getGg()%>" />
						</div>

						<button type="submit" class="btn btn-theme-bg">Update</button>

					</form>


				</div>
			</div>
		</div>
	</div>
	<div class="divide60"></div>

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
	<script src="<%=request.getContextPath()%>/js/investor.js"
		type="text/javascript"></script>

</body>
</html>