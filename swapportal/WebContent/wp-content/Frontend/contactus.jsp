<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
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


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="our-team-v-2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="center-heading">
						<h2>
							<strong>Team</strong>
						</h2>
						<span class="center-line"></span>
					</div>
				</div>
			</div>
			<div class="row">

				<div class="col-sm-4 text-center">
					<div class="person-v2">
						<img
							src="<%=request.getContextPath()%>/assets/images/users/rm.JPG"
							class="img-responsive" alt="">
						<div class="person-desc-v2">
							<h3>Rajan Patel</h3>
							<em>Team Leader - Creative Designer</em>
							<ul class="list-inline top-social">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
							</ul>
						</div>
					</div>
				</div>
				<!--person col end-->
				<div class="col-sm-4 text-center">
					<div class="person-v2">
						<img src="<%=request.getContextPath()%>/Image/yuvraj.png"
							class="img-responsive" alt="">
						<div class="person-desc-v2">
							<h3>Yuvraj Rajput</h3>
							<em>Creative Designer and Developer</em>
							<ul class="list-inline top-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
							</ul>
						</div>
					</div>
				</div>
				<!--person col end-->
				<div class="col-sm-4 text-center">
					<div class="person-v2">
						<img src="<%=request.getContextPath()%>/Image/shivam.jpg"
							class="img-responsive" alt="">
						<div class="person-desc-v2">
							<h3>Shivam Acharya</h3>
							<em>Creative Designer and Developer</em>
							<ul class="list-inline top-social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<!--                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>-->
							</ul>
						</div>
					</div>
				</div>
				<!--person col end-->

			</div>
		</div>
	</div>
	<!--our team v-2-->

</body>
</html>