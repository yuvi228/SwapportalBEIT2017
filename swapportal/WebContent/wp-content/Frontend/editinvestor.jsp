<%@page import="com.model.Register"%>
<%@page import="com.model.Investor"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%
  List<Investor> inv = (List<Investor>) session.getAttribute("Investor");
  %>
     <%
          if(!inv.isEmpty() && inv!= null){
				Iterator<Investor> it = inv.iterator();
				Investor inve = null;
				while(it.hasNext()){
				inve = (Investor)it.next();
   			%>
   				<%
   				List<Register> regg = (List<Register>) session.getAttribute("User");
   				%>
   				<%
   					if(!regg.isEmpty() && regg!= null){
					Iterator<Register> itr = regg.iterator();
					Register regi = null;
					while(itr.hasNext()){
					regi = (Register)itr.next();
   				%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Investor</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" /><!-- Bootstrap -->
        <link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.min.css" rel="stylesheet">
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
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body background="<%=request.getContextPath() %>/Image/bg.jpg">
<div class="top-bar-dark">            
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 hidden-xs">
                        <div class="top-bar-socials">
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-google-plus">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-linkedin">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-google-plus">
                                <i class="fa fa-youtube"></i>
                                <i class="fa fa-youtube"></i>
                            </a>
                            <a href="#" class="social-icon-sm si-dark si-gray-round si-colored-dribbble">
                                <i class="fa fa-dribbble"></i>
                                <i class="fa fa-dribbble"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-sm-8 text-right">
                        <ul class="list-inline top-dark-right">                      
                            
                            <li><a href=""><i class="fa fa-lock"></i> Welcome As <%=regi.getUsername() %></a></li>
<%--                             <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/registration.jsp"><i class="fa fa-user"></i> Sign Up</a></li> --%>
                       
                            <li><a class="topbar-icons" href="#"><span><i class="fa fa-search top-search"></i></span></a></li>
                        </ul>
                        <div class="search">
                            <form role="form">
                                <input type="text" class="form-control" autocomplete="off" placeholder="Write something and press enter">
                                <span class="search-close"><i class="fa fa-times"></i></span>
                            </form>
                        </div>
					 </div>
                </div>
            </div>
        </div><!--top-bar-dark end here-->
        <div class="navbar navbar-default navbar-static-top yamm sticky" role="navigation">
            <div class="container">
         <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  <img src="<%=request.getContextPath() %>/Image/swlogo.jpg" style="width:150px; margin:0px auto;" alt="A Social Online Platform for great ideas and Startups">A Social Online Platform for great ideas and Startups
                </div>
<!--                  <div class="navbar-collapse collapse"> -->
<!--                     <ul class="nav navbar-nav navbar-right"> -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/index.jsp">Home </i></a> --%>
<!--                         </li> -->
<!--                         menu home li end here -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/investor.jsp">Investor</i></a> --%>
                            
<!--                         </li> -->
<!--                         menu Portfolio li end here -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/ideaperson.jsp">Idea person</i></a> --%>
                            
<!--                         </li> -->
<!--                         menu blog li end here -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/faq.jsp">FAQ</i></a> --%>
<!--                         </li> -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA" href="<%=request.getContextPath() %>/wp-content/Frontend/feedback.jsp">Feedback</i></a> --%>
<!--                         </li> -->
<!--                         <li> -->
<%--                             <a style="background-color: #8FB8AA;" href="<%=request.getContextPath() %>/wp-content/Frontend/contactus.jsp">Contact US</i></a> --%>
<!--                         </li> -->
<!--                         menu pages li end here -->

<!--                            </ul> -->
<!--                 </div>/.nav-collapse -->
       
        	</div>
        </div>
        

                        <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Edit Investor profile </h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                            <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/index.jsp">Home</a></li>
                            <li> Edit Investor profile</li>
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
                        <h3><span> Edit Investor profile</span></h3>
   		 

                         <form role="form" action="<%=request.getContextPath() %>/FileUploadDBServlet?iid=<%=inve.getIid() %>&id=<%=inve.getId() %>" method="post" name="investor" onsubmit="return validate()" enctype="multipart/form-data">
                         <input  type="hidden" name="actionCode" value="updateInvestor">
                         
                         <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Register Id<font color=red>*</font></label>
                            <input type="text" Disabled class="form-control" name="regid" value="<%=inve.getId()%>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Name<font color=red>*</font></label>
                            <input type="text" Disabled class="form-control" name="name" value="<%=regi.getName()%>"/>
                        </div>
                             <%
				}
          }
                   %>
  						<div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Select your type<font color=red>*</font></label>
                            <select class="form-control select" name="st"> 
                                        	<option>Select Type</option>
                                               <option>Individual</option>
                                                <option>Company</option>
                                             </select>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Area of Interest<font color=red>*</font></label>
                            <select class="form-control select" name="aoi"> 
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
	<option value="12">Computer Software</option>
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
                            <label class="col-md-3 col-xs-12 control-label">Investing Amount<font color=red>*</font></label>
                            <input type="text" class="form-control" name="inam" value="<%=inve.getInvestingamount() %>"/>
                        </div>
                        
                        
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Addressline1<font color=red>*</font></label>
                            <input type="text" class="form-control" name="adrs1" value="<%=inve.getAddress1() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Addressline2<font color=red>*</font></label>
                            <input type="text" class="form-control" name="adrs2" value="<%=inve.getAddress2() %>"/>
                        </div>
                        <div class="form-group">
                             <label class="col-md-3 col-xs-12 control-label">Street<font color=red>*</font></label>
                            <input type="text" class="form-control" name="street" value="<%=inve.getStreet() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">City<font color=red>*</font></label>
                            <input type="text" class="form-control" name="city" value="<%=inve.getCity() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Country<font color=red>*</font></label>
                            <input type="text" class="form-control" name="country" value="<%=inve.getCountry() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Map<font color=red>*</font></label>
                            <input type="text" class="form-control" name="mp" value="<%=inve.getMap() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Facebook_url<font color=red>*</font></label>
                            <input type="text" class="form-control" name="fb" value="<%=inve.getFb() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Twitter_url<font color=red>*</font></label>
                            <input type="text" class="form-control" name="tw" value="<%=inve.getTw() %>"/>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 col-xs-12 control-label">Google+_url<font color=red>*</font></label>
                            <input type="text" class="form-control" name="gg" value="<%=inve.getGg() %>"/>
                        </div>
                        
                        <button type="submit" class="btn btn-theme-bg">Update</button>

                   </form>
                   <%
				}
          }
                   %>
                    
                    </div>
                </div>
            </div>
        </div>
        <div class="divide60"></div>
            <jsp:include page="footer.jsp"></jsp:include>
                   <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="<%=request.getContextPath() %>/js/bootstrap.min.js" type="text/javascript"></script>       
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
        <script src="<%=request.getContextPath() %>/js/investor.js" type="text/javascript"></script>
       
</body>
</html>