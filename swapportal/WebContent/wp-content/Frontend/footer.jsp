<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-attachment: fixed;
	background-image: url('<%=request.getContextPath()%>/Image/bg.jpg');
	background-size: cover;
	color: #ffffff;
	font-family: Arial, sans-serif;
}

#footer {
	background: #222;
	padding: 40px 0;
	color: #ccc;
}

#footer .footer-col h3 {
	font-size: 18px;
	color: #fff;
	margin-bottom: 20px;
	text-transform: uppercase;
}

#footer .footer-col p {
	font-size: 14px;
	line-height: 1.8;
}

#footer ul {
	padding: 0;
	margin: 0;
	list-style: none;
}

#footer ul li a {
	color: #aeaeae;
	text-decoration: none;
	transition: color 0.3s;
}

#footer ul li a:hover {
	color: #57A773;
}

.footer-social {
	margin-top: 10px;
}

.footer-social li {
	display: inline-block;
	margin: 0 5px;
}

.footer-social li a {
	font-size: 20px;
	color: #ccc;
	display: block;
	width: 40px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	background: #444;
	transition: background 0.3s, color 0.3s;
}

.footer-social li a:hover {
	background: #57A773;
	color: #fff;
}

.footer-btm {
	margin-top: 20px;
	font-size: 14px;
}

@media ( max-width : 768px) {
	.footer-col {
		margin-bottom: 30px;
		text-align: center;
	}
}
</style>
</head>
<body>
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 margin30">
					<div class="footer-col">
						<h3>About Swap Portal</h3>
						<p>A Social Online Platform for great Ideas/Startups and for
							Investors.</p>
						<ul class="list-inline footer-social">
							<li><a href="#" class="fa fa-facebook"></a></li>
							<li><a href="#" class="fa fa-twitter"></a></li>
							<li><a href="#" class="fa fa-google-plus"></a></li>
							<li><a href="#" class="fa fa-pinterest"></a></li>
							<li><a href="#" class="fa fa-linkedin"></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 margin30">
					<div class="footer-col">
						<h3>Contact</h3>
						<ul class="list-unstyled contact">
							<li><p>
									<strong><i class="fa fa-map-marker"></i> Address:</strong>
									Ahmedabad- 380061, Gujarat
								</p></li>
							<li><p>
									<strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a
										href="mailto:swapportalsry@gmail.com">swapportalsry@gmail.com</a>
								</p></li>
							<li><p>
									<strong><i class="fa fa-phone"></i> Phone:</strong> +91
									8306294247
								</p></li>
							<li><p>
									<strong><i class="fa fa-skype"></i> Skype:</strong> yuvraj_96
								</p></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 margin30">
					<div class="footer-col">
						<h3>Quick Links</h3>
						<ul>
							<li><a
								href="<%=request.getContextPath()%>/wp-content/Frontend/index.jsp">Home</a></li>
							<li><a
								href="<%=request.getContextPath()%>/wp-content/Frontend/faq.jsp">FAQ</a></li>
							<li><a
								href="<%=request.getContextPath()%>/wp-content/Frontend/investor.jsp">Investor</a></li>
							<li><a
								href="<%=request.getContextPath()%>/wp-content/Frontend/ideaperson.jsp">Entrepreneur</a></li>
							<li><a
								href="<%=request.getContextPath()%>/wp-content/Frontend/contactus.jsp">Contact
									Us</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="footer-btm">
						<span>&copy; 2019 Swap Portal. All Rights Reserved.</span>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
