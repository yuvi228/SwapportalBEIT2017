<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- custom css (blue color by default) -->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
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
<link href="<%=request.getContextPath()%>/css/Pe-icon-7-stroke.css"
	rel="stylesheet" type="text/css" media="screen">
<link
	href="<%=request.getContextPath()%>/css/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/sky-forms.css"
	rel="stylesheet" type="text/css" media="screen">
<!--owl carousel css-->
<link href="<%=request.getContextPath()%>/css/owl.carousel.css"
	rel="stylesheet" type="text/css" media="screen">
<link href="<%=request.getContextPath()%>/css/owl.theme.css"
	rel="stylesheet" type="text/css" media="screen">
<!--mega menu -->
<link href="<%=request.getContextPath()%>/css/yamm.css" rel="stylesheet"
	type="text/css">
<!--popups css-->
<link href="<%=request.getContextPath()%>/css/magnific-popup.css"
	rel="stylesheet" type="text/css">

</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg">

	<jsp:include page="header.jsp"></jsp:include>
	<div class="breadcrumb-wrapper">
		<div class="container">
			<h1 style="padding-top: 15px;">Sign Up for Swap Portal</h1>
		</div>
	</div>

	<div class="space-60"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="sky-form-login">
					<form action="<%=request.getContextPath()%>/Controller"
						class="sky-form" method="post" onsubmit="return validate()"
						name="reg">
						<input type="hidden" name="actionCode" value="addRegister">
						<h3 class="text-left">
							&nbsp;&nbsp;&nbsp;<i class="fa fa-user"
								style="margin-left: 30px; margin-top: 15px;">&nbsp;&nbsp;&nbsp;
							</i>Join the Swap Portal Community
						</h3>

						<fieldset>

							<section> <label class="select"> <select
								name="st">
									<option selected="" disabled="">Select User Type</option>
									<option>Investor</option>
									<option>Ideaperson</option>


							</select> <i></i>
							</label> </section>

							<section> <label class="input"> <input
								type="text" name="name" placeholder="Enter your Name" required>
							</label> </section>

							<section> <label class="input"> <input
								type="number" name="pn" placeholder="Enter your Phone" required
								maxlength="10"
								oninput="if(this.value.length > 10) this.value = this.value.slice(0, 10);">
							</label> </section>


							<section> <label class="input"> <i
								class="icon-append fa fa-envelope-o"></i> <input type="email"
								name="email" placeholder="Enter your Email address" required>
								<b class="tooltip tooltip-bottom-right">Enter valid email
									address</b>
							</label> </section>
							<section> <label class="input"> <i
								class="icon-append fa fa-user"></i> <input type="text" name="un"
								placeholder="Enter your Username" required> <b
								class="tooltip tooltip-bottom-right">Enter Username</b>
							</label> </section>
							<section> <label class="input"> <i
								class="icon-append fa fa-lock"></i> <input type="password"
								name="password" placeholder="Enter your Password" id="password"
								required> <b class="tooltip tooltip-bottom-right">Please
									Enter Your Password</b>
							</label> </section>

							<section> <label class="input"> <i
								class="icon-append fa fa-lock"></i> <input type="password"
								name="rps" placeholder="Enter your Confirm password" required>
								<b class="tooltip tooltip-bottom-right">Please confirm your
									password</b>
							</label> </section>



							<button
								style="background-color: #52CCE1; height: 20px; width: 200px;"
								type="submit" class="btn btn-skin btn-lg">Sign UP</button>

						</fieldset>
					</form>


				</div>
			</div>
			<!--col end-->
			<div class="col-md-6">
				<div class="login-register-aside-box">
					<h3>Already have an account!</h3>

					<br> <a style="background-color: #52CCE1"
						href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp"
						class="btn btn-dark btn-lg">Sign In</a>

				</div>
			</div>
		</div>
	</div>
	<div class="space-60"></div>
	<jsp:include page="footer.jsp"></jsp:include>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/registration.js"></script>
</body>
</html>