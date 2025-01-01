<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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

<title>Feedback</title>
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
<link href="<%=request.getContextPath()%>/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- custom css-->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">

<style>
label {
	color: black !important;
	/* Ensures that all labels in the form are black */
}
</style>
</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg"
	style="background-attachment: fixed;">

	<jsp:include page="header.jsp"></jsp:include>

	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">


			<%
			if (regi.getType().equals("Investor")) {
			%>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp">Dashboard</a></li>
			<%
			} else {
			%>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/ideapersondashboard.jsp">Dashboard</a></li>
			<%
			}
			%>

		</ul>
	</div>


	<div class="divide80"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
				<div class="login-form">
					<h3>
						<span>Feedback</span>
					</h3>
					<form role="form"
						action="<%=request.getContextPath()%>/Feedbackcontroller?id=<%=regi.getId()%>"
						method="post">
						<input type="hidden" name="actionCode" value="addFeedback">
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Email<font
								color=red>*</font></label> <input type="text" class="form-control"
								placeholder="" name="email" value="<%=regi.getEmail()%>" />
						</div>
						<%
						}
						}
						%>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Subject<font
								color=red>*</font></label> <input type="text" class="form-control"
								name="name" required />
						</div>
						<div class="form-group">
							<label class="col-md-3 col-xs-12 control-label">Comments</label>
							<textarea rows="5" cols="112" name="comments" required></textarea>
						</div>

						<button type="submit" class="btn btn-theme-bg">Submit</button>

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

</body>
</html>