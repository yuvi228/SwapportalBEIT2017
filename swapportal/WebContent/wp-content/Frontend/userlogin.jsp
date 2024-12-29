<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- custom css (blue color by default) -->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
<link
	href="<%=request.getContextPath()%>/css/fontawesome/font-awesome.css"
	rel="stylesheet">
<!-- font awesome for icons -->
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
<style>
.toast {
	visibility: hidden;
	min-width: 250px;
	margin: 0 auto;
	background-color: #f44336; /* Red color for error */
	color: white;
	text-align: center;
	border-radius: 5px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	left: 50%;
	bottom: 30px;
	transform: translateX(-50%);
	font-size: 16px;
	box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.2);
}

/* Show the toast when added with the "show" class */
.toast.show {
	visibility: visible;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

/* Fade in and out animations */
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>

<body background="<%=request.getContextPath()%>/Image/bg.jpg">
	<!-- Toast Container -->
	<div id="toast" class="toast"></div>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="breadcrumb-wrapper">
		<div class="container">
			<h1 style="padding-top: 15px;">Login</h1>
		</div>
	</div>
	<div class="space-60"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="sky-form-login">
					<form action="<%=request.getContextPath()%>/Authcontroller"
						class="sky-form" method="post" onsubmit="return validate()"
						name="reg">
						<input type="hidden" name="actionCode" value="addLogin">

						<h3 class="text-left">
							<i class="fa fa-unlock"
								style="margin-left: 30px; margin-top: 10px;"></i>Access Your
							Investor/Entrepreneur Dashboard on Swap Portal
						</h3>
						<fieldset>
							<section>
							<div class="row">
								<label class="label col col-4">Your E-mail</label>
								<div class="col col-8">
									<label class="input"> <i class="icon-append fa fa-user"></i>
										<input type="email" name="email" required>
									</label>
								</div>
							</div>
							</section>

							<section>
							<div class="row">
								<label class="label col col-4">Enter Password</label>
								<div class="col col-8">
									<label class="input"> <i class="icon-append fa fa-lock"></i>
										<input type="password" name="password" required>
									</label>
									<div class="note">
										<a
											href="<%=request.getContextPath()%>/wp-content/Frontend/forgot.jsp"
											class="modal-opener">Forgot password?</a>
									</div>
								</div>
							</div>
							</section>

							<section>
							<div class="row">
								<div class="col col-4"></div>
								<div class="col col-8">
									<label class="checkbox"><input type="checkbox"
										style="background-color: #52CCE1;" name="remember">Keep
										me logged in</label>
								</div>
							</div>
							</section>
						</fieldset>
						<footer class="text-right"> <%--                                 <a href="<%=request.getContextPath() %>/wp-content/Frontend/registration.jsp" class="btn btn-link">Register</a> --%>
						<button
							style="background-color: #52CCE1; width: 100px; height: 30px;"
							type="submit" class="btn btn-lg btn-skin">Sign In</button>

						</footer>

					</form>
				</div>
			</div>
			<!--col end-->
			<div class="col-md-6">
				<div class="login-register-aside-box">
					<h3>Don't have an account yet?</h3>

					<br> <a style="background-color: #52CCE1"
						href="<%=request.getContextPath()%>/wp-content/Frontend/registration.jsp"
						class="btn btn-light-dark btn-lg">Sign Up</a>
				</div>
			</div>
		</div>
	</div>
	<div class="space-60"></div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/registration.js"></script>

	<script>
        // Display Toast Notification if an error message is present
        window.onload = function() {
            const errorMessage = '<%=request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : ""%>';

            if (errorMessage.trim() !== "") {
                const toast = document.getElementById('toast');
                toast.textContent = errorMessage;
                toast.classList.add('show');
                setTimeout(() => toast.classList.remove('show'), 3000); // Hide after 3 seconds
            }
        };

        </script>
</body>
</html>