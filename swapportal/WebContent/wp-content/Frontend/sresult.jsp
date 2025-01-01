<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Ideaperson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
List<Ideaperson> person = (List<Ideaperson>) session.getAttribute("Ideapersondetails");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results</title>
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

<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<!-- END META SECTION -->

</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="col-sm-3 margin40">
		<ul class="list-unstyled side-nav">

			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/investordashboard.jsp"><i
					class="fa fa-dashboard"></i> Dashboard</a></li>

		</ul>
	</div>

	<%
	if (!person.isEmpty() && person != null) {
		Iterator<Ideaperson> it = person.iterator();
		Ideaperson ideaperson = null;
		while (it.hasNext()) {
			ideaperson = (Ideaperson) it.next();
			Integer id = ideaperson.getId();
	%>

	<div class="container my-3" style="margin: 25px">
		<h3 class="title-section">Search Ideas</h3>
		<div class="row property-listing">
			<div class="col-sm-4 margin30">
				<div class="image">
					<div class="content">
						<img
							src="<%=request.getContextPath()%>/Ideapersoncontroller?actionCode=getallideapersonImage&id=<%=id%>&format=jpg"
							class="card-img-top" alt="Idea Image"
							style="object-fit: cover; height: 200px;"
							onerror="this.onerror=null; this.src='<%=request.getContextPath()%>/Image/default_image_idea.png';" />

					</div>
					<!--content-->
				</div>
				<!--image-->
			</div>
			<!--image col-->
			<div class="col-sm-4">
				<h3>
					Project Abstract:-<a href=""><%=ideaperson.getProjectabstract()%>
					</a>
				</h3>
				<font color="black"> <e.m>Expected Fund:- <%=ideaperson.getExpectfund()%></em></font><br>
				<font color="black"> <e.m>About Enterprenure:- <%=ideaperson.getAboutyou()%></em></font><br>


			</div>
		</div>
		<!--property listing row-->

	</div>

	<%
	}
	}
	%>
	<!-- START PLUGINS -->
	<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- END PLUGINS -->

	<!-- START THIS PAGE PLUGINS-->
	<script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
	<script type="text/javascript"
		src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

	<script type="text/javascript"
		src="js/plugins/summernote/summernote.js"></script>
	<script type="text/javascript"
		src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap-select.js"></script>
	<script type="text/javascript"
		src="js/plugins/bootstrap/bootstrap-file-input.js"></script>
	<!-- END THIS PAGE PLUGINS-->

	<!-- START TEMPLATE -->
	<script type="text/javascript" src="js/settings.js"></script>

	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/actions.js"></script>

</body>
</html>