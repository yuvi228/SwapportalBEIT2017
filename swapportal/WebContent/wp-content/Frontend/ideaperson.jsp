<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Entrepreneur- Find Investor</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome for icons -->
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<!-- Flexslider CSS -->
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- Animated CSS -->
<link href="<%=request.getContextPath()%>/css/animate.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- Revolution Style-sheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/settings.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/rev-style.css">
<!-- Owl Carousel CSS -->
<link href="<%=request.getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/owl.theme.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- Mega Menu -->
<link href="<%=request.getContextPath()%>/css/yamm.css" rel="stylesheet"
	type="text/css">
<!-- Cube CSS -->
<link href="<%=request.getContextPath()%>/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp"><i
					class="fa fa-dashboard"></i> Upload your Proposal</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/faq.jsp"><i
					class="fa fa-history"></i> FAQ</a></li>
		</ul>
	</div>

	<div class="col-md-8">
		<h3 class="title-section">Swap Portal: Connecting Visionaries
			with Investors</h3>
		<div class="row property-listing">
			<p>Swap Portals primary mission is to support high-quality
				startups by facilitating meaningful connections between
				entrepreneurs and qualified investors from across the globe. Once
				your proposal is approved, we ensure the following features and key
				benefits:</p>

			<ul>
				<li><strong>Global Exposure:</strong> Your investment proposal
					will be listed on our Venture Fund platform, accessible to all
					registered investors.</li>
				<li><strong>Targeted Outreach:</strong> We send your investment
					proposal to investors who we believe are a strong fit for your
					startup. Unlike traditional platforms, we avoid sending proposals
					randomly, ensuring that each investor receives only relevant
					opportunities.</li>
				<li><strong>Ongoing Promotion:</strong> Beyond the initial
					outreach, we continue promoting your investment proposal to all
					new, approved investors, ensuring that we are consistently working
					on securing interested parties for your venture.</li>
				<li><strong>Investor Interest Notifications:</strong> You will
					be notified whenever an investor expresses interest in your
					proposal and wishes to explore further discussions.</li>
			</ul>

			<a
				href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp"><b>Click
					here</b> to upload your proposal.</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Scripts and Plugins -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.sticky.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.counterup.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/wow.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/js/jquery.mb.YTPlayer.min.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/custom.js"
		type="text/javascript"></script>
</body>
</html>
