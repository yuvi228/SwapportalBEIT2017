
<%@page import="com.model.Register"%>
<%
// Retrieve the logged-in user details
Register regi = (Register) session.getAttribute("Userdetails");
String homepageUrl = null;
if (regi != null) {
	if ("Investor".equals(regi.getType())) {
		homepageUrl = "/wp-content/Frontend/investordashboard.jsp";
	} else if ("IdeaPerson".equals(regi.getType())) {
		homepageUrl = "/wp-content/Frontend/ideapersondashboard.jsp";
	}
%>
<div class="navbar navbar-default navbar-static-top yamm sticky"
	role="navigation">
	<div class="container">


		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a href="<%=request.getContextPath()%><%=homepageUrl%>"> <img
				src="<%=request.getContextPath()%>/Image/swlogo.jpg"
				class="navbar-logo"
				alt="A Social Online Platform for great ideas and Startups">
			</a> <span class="navbar-tagline">Bridging Ideas with Investment,
				Empowering Innovators.</span>
		</div>

		<%
		} else {
		homepageUrl = "/wp-content/Frontend/index.jsp";
		%>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a href="<%=request.getContextPath()%><%=homepageUrl%>"> <img
				src="<%=request.getContextPath()%>/Image/swlogo.jpg"
				class="navbar-logo"
				alt="A Social Online Platform for great ideas and Startups">
			</a> <span class="navbar-tagline">Bridging Ideas with Investment,
				Empowering Innovators.</span>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<%=request.getContextPath()%><%=homepageUrl%>">Home</a>
				</li>
				<li><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/investor.jsp">Investor</a></li>
				<li><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/ideaperson.jsp">Entrepreneur</a></li>
				<li><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/faq.jsp">FAQ</a></li>
				<li><a
					href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp">Login</a></li>
				<!-- 				<li><a -->
				<%-- 					href="<%=request.getContextPath()%>/wp-content/Frontend/admin.jsp">Admin --%>
				<!-- 						Panel</a></li> -->
			</ul>
		</div>
		<%
		}
		%>

	</div>
</div>

<head>
<style>
/* Navbar Styles */
.navbar {
	background: linear-gradient(to right, #8FB8AA, #57A773);
	border: none;
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

.navbar-logo {
	width: 150px;
	max-height: 100px;
}

.navbar-tagline {
	font-size: 16px;
	color: #fff;
	margin-left: 15px;
	display: inline-block;
}

/* Navbar Links */
.navbar-nav li a {
	color: #fff !important;
	padding: 10px 15px;
	transition: background 0.3s ease, color 0.3s ease;
	border-radius: 5px;
	font-weight: 500;
}

.navbar-nav li a:hover {
	background-color: #57A773 !important;
}

/* Toggle Button */
.navbar-toggle {
	border: none;
	background-color: #57A773;
}

.navbar-toggle .icon-bar {
	background-color: #fff;
}

/* Responsive Styles */
@media ( max-width : 768px) {
	.navbar-tagline {
		display: block;
		text-align: center;
		margin-top: 10px;
	}
}
</style>
</head>