<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Admin</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
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
        <link href="<%=request.getContextPath() %>/css/cubeportfolio.min.css" rel="stylesheet" type="text/css">
        <!-- custom css-->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">
        
</head>
<body style="background-attachment:fixed;" background="<%=request.getContextPath() %>/Image/bg.jpg" >
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
                            
<%--                             <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/userlogin.jsp"><i class="fa fa-lock"></i>Welcome Admin</a></li> --%>
                            <li><i class="fa fa-lock"></i>Welcome Admin</li>
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
                  <img src="<%=request.getContextPath() %>/Image/swlogo.jpg" style="width:150px; margin:0px auto;" alt="A Social Online Platform for great ideas and Startups"><b>A Social Online Platform for great ideas and Startups</b>
                </div>
                        
        	</div>
        </div>
        

   <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Admin DashBoard</h4>
                    </div>
                </div>
            </div>
        </div><!--breadcrumbs-->
        <center><table style="text-align: center;" align="center" cellpadding="100" width="40%" height="400px">
        <tr>
        <td>
        <a href="<%= request.getContextPath()%>/Controller?actionCode=getallIdeaperson"><i class="fa fa-dashboard fa-5x"></i><br>Idea Person Profile data</a>
        </td>
<!--         <td> -->
<!--         <a href=""><i class="fa fa-cogs fa-5x"></i><br>User Manager</a> -->
<!--         </td> -->
        <td>
        <a href="<%= request.getContextPath()%>/wp-content/Frontend/registration.jsp"><i class="fa fa-user-plus fa-5x"></i><br>Add User</a>
        </td>
        </tr>
        <tr>
        <td>
        <a href="<%= request.getContextPath()%>/Controller?actionCode=getalluser"><i class="fa fa-pencil fa-5x"></i><br>Manage User</a>
        </td>
        <td>
        <a href="<%= request.getContextPath()%>/wp-content/Frontend/postidea.jsp"><i class="fa fa-plus fa-5x"></i><br>Add Idea</a>
        </td>
        <td>
        <a href="<%= request.getContextPath()%>/Controller?actionCode=getallInvestor"><i class="fa fa-cogs fa-5x"></i><br> Investor profile data</a>
        </td>
        </tr>
        <tr>
        <td>
        <a href="<%= request.getContextPath()%>/Controller?actionCode=getallIdea"><i class="fa fa-cogs fa-5x"></i><br>Idea Manager</a>
        </td>
       <td>
        <a href="<%=request.getContextPath() %>/Controller?actionCode=getallfeedback"><i class="fa fa-cogs fa-5x"></i><br>FeedBack Manage</a>
        </td>
        <td>
        <a href="<%=request.getContextPath() %>/wp-content/Frontend/emailcompose.jsp"><i class="fa fa-envelope fa-5x"></i><br>Mail</a>
        </td>
        
        </tr>
        </table>
        </center>
         
                        
                        
                        
                            
                            
                           
                       
                
	       
         

        
       
</body>
</html>