<%@page import="java.util.Iterator"%>
<%@page import="com.model.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	List<Post> registerList =(List<Post>) session.getAttribute("Post");
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Idea Details</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
<link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- custom css (blue color by default) -->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">

        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/font-awesome/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="<%=request.getContextPath() %>/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <!--owl carousel css-->
        <link href="<%=request.getContextPath() %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="<%=request.getContextPath() %>/css/yamm.css" rel="stylesheet" type="text/css">
        <!--popups css-->
        <link href="<%=request.getContextPath() %>/css/magnific-popup.css" rel="stylesheet" type="text/css">

</head>
<body background="<%=request.getContextPath() %>/Image/bg.jpg">
<div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Tables</h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                           <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/admin.jsp">Home</a></li>
                            <li>Tables</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div><!--breadcrumbs-->
        <div class="divide80"></div>
        <div class="container shortcodes">
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="margin30">Post Table data</h4>
                    <font color="black">
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                
                               				 <th>PId</th>
                               				 <th>Id</th>
											<th>Definition</th>
											<th>Title</th>
											<th>Keyword</th>
											<th>Abstract</th>
											<th>Description</th>
											<th>Category</th>
											<th>Status</th>
											<th>Startdate</th>
											<th>Edit</th>
											<th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
										if(!registerList.isEmpty() && registerList != null){
											Iterator<Post> it = registerList.iterator();
											Post batchObj = null;
											while(it.hasNext()){
											batchObj = (Post)it.next();
										%>
                            <tr>
                                			<td><%=batchObj.getPid()%></td>
                                			<td><%=batchObj.getId() %></td>
                               				<td><%=batchObj.getDefinition()%></td>
											<td><%=batchObj.getTitle()%></td>
											<td><%=batchObj.getKeyword()%></td>
											<td><%=batchObj.getAbstrct()%></td>
											<td><%=batchObj.getDescription()%></td>
											<td><%=batchObj.getCategory()%></td>
											<td><%=batchObj.getStatus()%></td>
											<td><%=batchObj.getStartdate()%></td>
										
											<td><a href="<%=request.getContextPath() %>/Controller?actionCode=updateIdea&pid=<%=batchObj.getPid() %>">Edit</a></td>
											<td><a href="<%=request.getContextPath() %>/Controller?actionCode=deleteIdea&pid=<%=batchObj.getPid() %>">Delete</a></td>
                            </tr>
                            <%
											}
										}
											%>
                        </tbody>
                    </table>
                    </font>
        </div></div></div>
</body>
</html>