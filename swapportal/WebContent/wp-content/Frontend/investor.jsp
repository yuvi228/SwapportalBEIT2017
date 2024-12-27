<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Investor</title>
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
				href="<%=request.getContextPath()%>/wp-content/Frontend/registration.jsp"><i
					class="fa fa-dashboard"></i> Register Now</a></li>
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/faq.jsp"><i
					class="fa fa-history"></i> FAQ</a></li>
		</ul>
	</div>

	<div class="col-md-8">
		<h3 class="title-section">Swap Portal: Empowering Entrepreneurs,
			Connecting Investors</h3>

		<div class="row property-listing">
			<p style="text-align: justify" class="sub-text margin60">
				Swap Portal is a premier global platform designed to bridge the gap
				between entrepreneurs seeking growth or startup capital and angel
				investors in search of high-quality investment opportunities.
				Through its continually expanding and meticulously curated database,
				Swap Portal facilitates strategic connections between promising
				entrepreneurs and discerning investors. <br />Our platform's unique
				value proposition lies in its commitment to educating and mentoring
				entrepreneurs, ensuring they are investment-ready. This approach not
				only enhances the quality of deal flow for investors but also
				maximizes the potential for successful partnerships and business
				growth.
			</p>

			<p style="text-align: justify" class="sub-text margin60">As a
				trusted hub for innovation and investment, Swap Portal is dedicated
				to fostering long-term, mutually beneficial relationships within the
				entrepreneurial ecosystem.</p>
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
