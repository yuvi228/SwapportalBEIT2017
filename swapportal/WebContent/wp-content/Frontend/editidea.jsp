<%@page import="java.util.Iterator"%>
<%@page import="com.model.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    List<Post> student = (List<Post>) session.getAttribute("Idea");
    %>
     <%
    if (student != null && !student.isEmpty()) {
		Iterator<Post> it = student.iterator();
		Post post= null;
		while (it.hasNext()) {
			post = it.next();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Ideas</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
<link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/font-awesome/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="<%=request.getContextPath() %>/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet" type="text/css" media="screen"> 
        <!-- Revolution Style-sheet -->
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/settings.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/rev-style.css">
        <!--owl carousel css-->
        <link href="<%=request.getContextPath() %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="<%=request.getContextPath() %>/css/yamm.css" rel="stylesheet" type="text/css">
        <!--cube css-->
        <link href="<%=request.getContextPath() %>/cubeportfolio/css/cubeportfolio.min.css" rel="stylesheet" type="text/css">
        <!-- custom css-->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body background="<%=request.getContextPath() %>/Image/bg.jpg">
<%--  <jsp:include page="menubar.jsp"></jsp:include>         --%>
 
 
 <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Idea Post</h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                            <li><a href="index.jsp">Home</a></li>
                            <li>Idea Post</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div><!--breadcrumbs-->
        <div class="divide80"></div>
        <div class="container">
            <div class="row">  
                <div class="col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                    <div class="login-form">
                        <h3><span>Post Idea</span></h3>
                         <form role="form" action="<%=request.getContextPath() %>/Controller?pid=<%=post.getPid() %>&id=<%=post.getId() %>" method="post">
                         <input type="hidden" name="actionCode" value="updateIdea">
						<div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Definition<font color=red>*</font></label>
                            <input type="text" class="form-control" name="pd" value="<%= post.getDefinition()%>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Title<font color=red>*</font></label>
                            <input type="text" class="form-control" name="pt" value="<%= post.getTitle()%>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Keyword<font color=red>*</font></label>
                            <input type="text" class="col-md-4 col-xs-12 form-control " name="pk" value="<%= post.getKeyword()%>"/>
                        </div><br/><br/><br/>
                        <div class="form-group">

                            <input type="text" class="form-control" name="pk1"/>
                        </div>
                        <div class="form-group">
                            
                            <input type="text" class="form-control" name="pk2"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Abstract<font color=red>*</font></label>
                            <textarea class="form-control" rows="5" name="pa" /></textarea>
                        </div>
                        <div class="form-group">
                            <label class="col-md-6 col-xs-12 control-label">Project Detail Description<font color=red>*</font></label>
                            <textarea class="form-control" rows="5" name="pdd" /></textarea>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Category<font color=red>*</font></label>
                            <select class="form-control select" name="pc"> 
                                        	<option>Select Industry</option>
                                               <option value="2">Aerospace and Defence</option>
	<option value="3">Agriculture</option>
	<option value="4">Art and Design</option>
	<option value="5">Automotive</option>
	<option value="6">Aviation</option>
	<option value="7">Banking</option>
	<option value="8">Biotechnology</option>
	<option value="9">Chemicals</option>
	<option value="10">Communications-Publishing</option>
	<option value="11">Computer Hardware</option>
	<option value="12" selected="selected">Computer Software</option>
	<option value="13">Construction</option>
	<option value="14">Consumer Durables and Non-Durables</option>
	<option value="17">Drugs</option>
	<option value="49">E-commerce </option>
	<option value="18">Education-Training</option>
	<option value="19">Electronics</option>
	<option value="20">Energy</option>
	<option value="21">Entertainment</option>
	<option value="22">Fashion</option>
	<option value="23">Film</option>
	<option value="24">Financial Services</option>
	<option value="25">Food and Beverage</option>
	<option value="26">Health Services</option>
	<option value="27">Insurance</option>
	<option value="36">Internet</option>
	<option value="28">Leisure</option>
	<option value="31">Media</option>
	<option value="32">Medical-Healthcare</option>
	<option value="33">Mobile App-Web App</option>
	<option value="34">Nanotechnology</option>
	<option value="37">Oil-Gas Production</option>
	<option value="38">Property</option>
	<option value="39">Retail</option>
	<option value="40">Service - Biz and Personal</option>
	<option value="50">Social Media</option>
	<option value="45">Tourism</option>
	<option value="46">Transportation</option>
	<option value="47">Utilities</option>  
                                            </select>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Project Status<font color=red>*</font></label>
                            <select class="form-control select" name="ps" > 
                                        	<option>Project Status</option>
                                               <option>Yet to Start</option>
												<option>25% Complete</option>
												<option>50% Complete</option>
												<option>75% Complete</option>
												<option>100% Complete</option>
                                            </select>
                        </div>
                         <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Expected Start Date</label>
                            <input type="text" class="form-control datepicker" value="2015-11-01" namae="esd" value="<%= post.getStartdate()%>">
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Documentation File</label>
                            <input type="file" class="fileinput btn-primary" name="filename" id="filename" title="Browse file"/>
                        </div>
                     
                        <button type="submit" class="btn btn-theme-bg">Update</button>
                                  <%
			}
			}
		%>
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="divide60"></div>
<%--              <jsp:include page="footer.jsp"></jsp:include> --%>
                    <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="<%=request.getContextPath() %>/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
        <!--easing plugin for smooth scroll-->
        <script src="<%=request.getContextPath() %>/js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <!--sticky header-->
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.sticky.js"></script>
        <!--flex slider plugin-->
        <script src="<%=request.getContextPath() %>/js/jquery.flexslider-min.js" type="text/javascript"></script>
        <!--parallax background plugin-->
        <script src="<%=request.getContextPath() %>/js/jquery.stellar.min.js" type="text/javascript"></script>
        <!--digit countdown plugin-->
        <script src="<%=request.getContextPath() %>/js/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="<%=request.getContextPath() %>/js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="<%=request.getContextPath() %>/js/wow.min.js" type="text/javascript"></script> 
        <!--owl carousel slider-->
        <script src="<%=request.getContextPath() %>/js/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="<%=request.getContextPath() %>/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <!--you tube player-->
        <script src="<%=request.getContextPath() %>/js/jquery.mb.YTPlayer.min.js" type="text/javascript"></script>
        <!--customizable plugin edit according to your needs-->
        <script src="<%=request.getContextPath() %>/js/custom.js" type="text/javascript"></script>
</body>
</html>