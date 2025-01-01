<%@page import="com.model.Register"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
	Register regg = (Register) session.getAttribute("Userdetails");
%>
<%
	List<Post> ideaList = (List<Post>) session.getAttribute("PostsbyIdeaperson");
	%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Idea</title>
<link rel="icon" href="<%=request.getContextPath()%>/favicon.ico"
	type="image/x-icon" />
<!-- Bootstrap -->
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
<link
	href="<%=request.getContextPath()%>/cubeportfolio/css/cubeportfolio.min.css"
	rel="stylesheet" type="text/css">
<!-- custom css-->
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" media="screen">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="<%=request.getContextPath()%>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="<%=request.getContextPath()%>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

<style type="text/css">
table tbody td {
	color: black; /* Ensure the table content has black text */
}

table th {
	color: white; /* Keep headers white for contrast */
}
</style>

</head>
<body background="<%=request.getContextPath()%>/Image/bg.jpg">
	<jsp:include page="header.jsp"></jsp:include>


	<div class="col-sm-3">
		<ul class="list-unstyled side-nav">
			<li><a
				href="<%=request.getContextPath()%>/wp-content/Frontend/ideapersondashboard.jsp">
					<i class="fa fa-dashboard"></i> Dashboard
			</a></li>
		</ul>
	</div>

	<div class="container mt-4">
		<div class="row">
			<div class="col-sm-12">
				<!-- Table for Idea Repository -->
				<h4 class="mb-4 text-center">Idea Repository</h4>

				<table class="table table-bordered">
					<thead class="thead-dark">
						<tr>
							<th>PId</th>
							<th>Definition</th>
							<th>Title</th>
							<th>Keyword</th>
							<th>Abstract</th>
							<th>Description</th>
							<th>Category</th>
							<th>Status</th>
							<th>Start Date</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						if (ideaList != null && !ideaList.isEmpty()) {
							Iterator<Post> it = ideaList.iterator();
							Post batchObj = null;
							while (it.hasNext()) {
								batchObj = it.next();
						%>
						<tr>
							<td><%=batchObj.getPid()%></td>
							<td><%=batchObj.getDefinition()%></td>
							<td><%=batchObj.getTitle()%></td>
							<td><%=batchObj.getKeyword()%></td>
							<td><%=batchObj.getAbstrct()%></td>
							<td><%=batchObj.getDescription()%></td>
							<td><%=batchObj.getCategory()%></td>
							<td><%=batchObj.getStatus()%></td>
							<td><%=batchObj.getStartdate()%></td>

							<td>
								<!-- Edit and Delete Icons side by side --> <a
								href="<%=request.getContextPath()%>/Ideapostcontroller?actionCode=updateIdea&pid=<%=batchObj.getPid()%>"
								class="btn btn-primary btn-sm mr-2 d-inline-block" title="Edit">
									<i class="fa fa-edit"></i>
							</a> <a
								href="<%=request.getContextPath()%>/Ideapostcontroller?actionCode=deleteIdea&pid=<%=batchObj.getPid()%>"
								class="btn btn-danger btn-sm d-inline-block" title="Delete"
								onclick="return confirm('Are you sure you want to delete this idea?');">
									<i class="fa fa-trash"></i>
							</a>
							</td>


						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Adding Bootstrap JS and jQuery for better functionality (for modals, tooltips, etc.) -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>



	<!--scripts and plugins -->
	<!--must need plugin jquery-->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<!--bootstrap js plugin-->
	<script
		src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!--easing plugin for smooth scroll-->
	<script src="<%=request.getContextPath()%>/js/jquery.easing.1.3.min.js"
		type="text/javascript"></script>
	<!--sticky header-->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.sticky.js"></script>
	<!--flex slider plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.flexslider-min.js"
		type="text/javascript"></script>
	<!--parallax background plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.stellar.min.js"
		type="text/javascript"></script>
	<!--digit countdown plugin-->
	<script src="<%=request.getContextPath()%>/js/waypoints.min.js"></script>
	<!--digit countdown plugin-->
	<script src="<%=request.getContextPath()%>/js/jquery.counterup.min.js"
		type="text/javascript"></script>
	<!--on scroll animation-->
	<script src="<%=request.getContextPath()%>/js/wow.min.js"
		type="text/javascript"></script>
	<!--owl carousel slider-->
	<script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"
		type="text/javascript"></script>
	<!--popup js-->
	<script
		src="<%=request.getContextPath()%>/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<!--you tube player-->
	<script
		src="<%=request.getContextPath()%>/js/jquery.mb.YTPlayer.min.js"
		type="text/javascript"></script>


	<!--customizable plugin edit according to your needs-->
	<script src="<%=request.getContextPath()%>/js/custom.js"
		type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/ideaperson.js"
		type="text/javascript"></script>


</body>

</html>