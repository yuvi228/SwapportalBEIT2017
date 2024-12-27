<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />

<!-- Stylesheets -->
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/sky-forms.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/magnific-popup.css"
	rel="stylesheet">
</head>
<body
	style="background: url('<%=request.getContextPath()%>/Image/bg.jpg') fixed;">

	<!-- Header Include -->
	<jsp:include page="header.jsp"></jsp:include>

	<main>
		<!-- Breadcrumb -->
		<div class="breadcrumb-wrapper">
			<div class="container">
				<h1 class="pt-3">Sign Up for Swap Portal</h1>
			</div>
		</div>

		<!-- Registration Form -->
		<div class="space-60"></div>
		<div class="container">
			<div class="row">
				<!-- Registration Form Section -->
				<div class="col-md-6">
					<div class="sky-form-login">
						<form action="<%=request.getContextPath()%>/Controller"
							class="sky-form" method="post" onsubmit="return validate()"
							name="reg">
							<input type="hidden" name="actionCode" value="addRegister">
							<h3 class="text-left">
								<i class="fa fa-user"></i> Join the Swap Portal Community
							</h3>
							<fieldset>
								<section>
									<label class="select"> <select name="st" required>
											<option selected disabled>Select User Type</option>
											<option>Investor</option>
											<option>Ideaperson</option>
									</select> <i></i>
									</label>
								</section>
								<section>
									<label class="input"> <input type="text" name="name"
										placeholder="Enter your Name" required>
									</label>
								</section>
								<section>
									<label class="input"> <input type="number" name="pn"
										placeholder="Enter your Phone" required maxlength="10"
										oninput="if(this.value.length > 10) this.value = this.value.slice(0, 10);">
									</label>
								</section>
								<section>
									<label class="input"> <i
										class="icon-append fa fa-envelope-o"></i> <input type="email"
										name="email" placeholder="Enter your Email address" required>
										<b class="tooltip tooltip-bottom-right">Enter a valid
											email address</b>
									</label>
								</section>
								<section>
									<label class="input"> <i class="icon-append fa fa-user"></i>
										<input type="text" name="un" placeholder="Enter your Username"
										required> <b class="tooltip tooltip-bottom-right">Enter
											a username</b>
									</label>
								</section>
								<section>
									<label class="input"> <i class="icon-append fa fa-lock"></i>
										<input type="password" name="password"
										placeholder="Enter your Password" id="password" required>
										<b class="tooltip tooltip-bottom-right">Enter your
											password</b>
									</label>
								</section>
								<section>
									<label class="input"> <i class="icon-append fa fa-lock"></i>
										<input type="password" name="rps"
										placeholder="Confirm your Password" required> <b
										class="tooltip tooltip-bottom-right">Confirm your password</b>
									</label>
								</section>
								<button type="submit" class="btn btn-skin btn-lg"
									style="background-color: #52CCE1;">Sign Up</button>
							</fieldset>
						</form>
					</div>
				</div>

				<!-- Sign-In Section -->
				<div class="col-md-6">
					<div class="login-register-aside-box">
						<h3>Already have an account?</h3>
						<a
							href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp"
							class="btn btn-dark btn-lg" style="background-color: #52CCE1;">Sign
							In</a>
					</div>
				</div>
			</div>
		</div>
		<div class="space-60"></div>
	</main>

	<!-- Footer Include -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- JavaScript -->
	<script src="<%=request.getContextPath()%>/js/registration.js"></script>
</body>
</html>
