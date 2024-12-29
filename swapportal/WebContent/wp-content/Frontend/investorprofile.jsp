
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
  List<Register> reg = (List<Register>) session.getAttribute("User");
  %>
<%
   					if(!reg.isEmpty() && reg!= null){
					Iterator<Register> itr = reg.iterator();
					Register regi = null;
					while(itr.hasNext()){
					regi = (Register)itr.next();
   				%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Investor Profile</title>
<!-- Bootstrap -->
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico"
	type="image/x-icon" />
<link
	href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- font awesome for icons -->
<link
	href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css"
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

						<li><a href=""><i class="fa fa-lock"></i> Welcome <%=regi.getUsername()%></a></li>
						<%--                             <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/registration.jsp"><i class="fa fa-user"></i> Sign Up</a></li> --%>
						<li><a class="topbar-icons" href="#"><span><i
									class="fa fa-search top-search"></i></span></a></li>
					</ul>

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
			<!--                  <div class="navbar-collapse collapse"> -->
			<!--                     <ul class="nav navbar-nav navbar-right"> -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/index.jsp">Home </i></a> --%>
			<!--                         </li> -->
			<!--                         menu home li end here -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/investor.jsp">Investor</i></a> --%>

			<!--                         </li> -->
			<!--                         menu Portfolio li end here -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/ideaperson.jsp">Idea person</i></a> --%>

			<!--                         </li> -->
			<!--                         menu blog li end here -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/faq.jsp">FAQ</i></a> --%>
			<!--                         </li> -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/feedback.jsp">Feedback</i></a> --%>
			<!--                         </li> -->
			<!--                         <li> -->
			<%--                             <a style="background-color: #8FB8AA;" href="<%=request.getContextPath() %>/wp-content/Frontend/contactus.jsp">Contact US</i></a> --%>
			<!--                         </li> -->
			<!--                         menu pages li end here -->

			<!--                            </ul> -->
			<!--                 </div>/.nav-collapse -->

		</div>
	</div>



	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h4>Investor profile update</h4>
				</div>
				<div class="col-sm-6 hidden-xs text-right">
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/wp-content/Frontend/index.jsp">Home</a></li>
						<li>Investor profile</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs-->
	<div class="col-sm-2 ">

		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/searchproposal.jsp"><i
					class="fa fa-search"></i> Search Proposal</a></li>
		</ul>

	</div>

	<div class="divide80"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-12 col-md-offset-2 col-sm-offset-2">
				<div class="login-form">
					<h3>
						<span>Investor profile</span>
					</h3>
					<form role="form"
						action="<%=request.getContextPath()%>/Investorcontroller?id=<%=regi.getId()%>"
						method="post" name="investor" onsubmit="return validate()"
						enctype="multipart/form-data">
						<input type="hidden" name="actionCode" value="addInvestor">

						<div class="form-group">

							<label class="col-md-3 col-xs-12 control-label">Email<font
								color=red>*</font></label> <input type="text" Disabled
								class="form-control" value="<%=regi.getEmail()%>" name="email" />

						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Name<font
								color=red>*</font></label> <input type="text" Disabled
								class="form-control" name="name" value="<%=regi.getName()%>" />
						</div>
						<%
						}
						}
						%>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Select
								your type<font color=red>*</font>
							</label> <select class="form-control select" name="st">
								<option>Select Type</option>
								<option>Individual</option>
								<option>Company</option>
							</select>
						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Area of
								Interest<font color=red>*</font>
							</label> <select class="form-control select" name="aoi">
								<option>Select Industry</option>

								<option>Computer Hardware</option>
								<option selected="selected">Computer Software</option>

							</select>

						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Investing
								Amount<font color=red>*</font>
							</label> <input type="text" class="form-control" name="inam" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Logo</label> <input
								type="file" class="fileinput btn-primary" name="photo"
								id="filename" />
						</div>

						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline1<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs1" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Addressline2<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="adrs2" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Street<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="street" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">City<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="city" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Country<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="country" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Map<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="mp" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Facebook_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="fb" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Twitter_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="tw" />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Google+_url<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="gg" />
						</div>

						<button type="submit" class="btn btn-theme-bg">Save
							Profile</button>

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