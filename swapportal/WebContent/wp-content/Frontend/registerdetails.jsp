<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
List<Register> reg = (List<Register>) session.getAttribute("Registration");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Details</title>
<link
	href="<%=request.getContextPath()%>/css/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- custom css (blue color by default) -->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">

<!-- font awesome for icons -->
<link
	href="<%=request.getContextPath()%>/css/font-awesome/font-awesome.min.css"
	rel="stylesheet">
<!-- flex slider css -->
<link href="<%=request.getContextPath()%>/css/flexslider.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- animated css  -->
<link href="<%=request.getContextPath()%>/css/animate.css"
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

<style>
.toast {
	visibility: hidden;
	min-width: 250px;
	margin: 0 auto;
	background-color: #00FF00; /* Red color for error */
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
</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg">
	<div id="toast" class="toast"></div>
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h4>Tables</h4>
				</div>
				<div class="col-sm-6 hidden-xs text-right">
					<ol class="breadcrumb">
						<li><a
							href="<%=request.getContextPath()%>/wp-content/Frontend/admin.jsp">Home</a></li>
						<li>Tables</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs-->
	<div class="divide80"></div>
	<div class="container shortcodes">
		<div class="row">
			<div class="col-sm-12">
				<h4 class="margin30">Table Condensed</h4>
				<font color="black">
					<table class="table table-condensed">
						<thead>

							<tr>

								<th>Id</th>
								<th>Type</th>
								<th>Name</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Username</th>
								<th>Password</th>

								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<%
							if (!reg.isEmpty() && reg != null) {
								Iterator<Register> it = reg.iterator();
								Register regi = null;
								while (it.hasNext()) {
									regi = (Register) it.next();
							%>
							<tr>
								<td><%=regi.getId()%></td>
								<td><%=regi.getType()%></td>
								<td><%=regi.getName()%></td>
								<td><%=regi.getPhone()%></td>
								<td><%=regi.getEmail()%></td>
								<td><%=regi.getUsername()%></td>
								<td><%=regi.getPassword()%></td>

								<td><a
									href="<%=request.getContextPath()%>/Authcontroller?actionCode=updateuserData&id=<%=regi.getId()%>">Update</a></td>
								<td><a
									href="<%=request.getContextPath()%>/Authcontroller?actionCode=deleteData&id=<%=regi.getId()%>">Delete</a></td>


							</tr>
							<%
							}
							}
							%>
						</tbody>
					</table>
				</font>
			</div>
		</div>
	</div>
</body>
<script>
        // Display Toast Notification if an error message is present
        window.onload = function() {
            const successDeleteMessage = '<%=request.getAttribute("successDeleteMessage") != null ? request.getAttribute("successDeleteMessage") : ""%>';

            if (successDeleteMessage.trim() !== "") {
                const toast = document.getElementById('toast');
                toast.textContent = successDeleteMessage;
                toast.classList.add('show');
                setTimeout(() => toast.classList.remove('show'), 3000); // Hide after 3 seconds
            }
        };

        </script>
</html>