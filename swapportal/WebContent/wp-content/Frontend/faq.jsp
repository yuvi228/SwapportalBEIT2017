<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FAQ</title>

        <title>assan - Professional theme</title>
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
        <!-- Bootstrap -->
        <link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- custom css (blue color by default) -->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">
       
        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.min.css" rel="stylesheet">
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
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="<%=request.getContextPath() %>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body background="<%=request.getContextPath() %>/Image/bg.jpg">
       <jsp:include page="header.jsp"></jsp:include> 
       <div class="breadcrumb-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Faqs</h4>
                    </div>
                    <div class="col-sm-6 hidden-xs text-right">
                        <ol class="breadcrumb">
                            <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/index.jsp">Home</a></li>
                            <li>Faqs</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div><!--breadcrumbs-->
        <div class="divide80"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="center-heading">
                        <h2>Got any questions?</h2>
                        <span class="center-line"></span>
                        <p class="lead">If you have any question regarding our website than you can check out the solution given below. </p>
                    </div><!--center-heading-->
                </div>
            </div>
            <div class="divide30"></div>
            <div class="row">
                <center></center><div class="col-md-7">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                        How can i register?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    First you have to make your paid account. If you are visitor than you don't have to register. you can visit our website. now if you are an idea person then you have to register yourself as a <b>Idea Person</b> and if you are a investor then register yourself as a Investor in the Registration tab.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                        Is registration is free?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="panel-body">
                                    No, because of security reason you have to make paid registration. If this will be free then may be many fake account will be created and your privacy and security will be compromised.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                       What after registraition? 
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="panel-body">
                                  After registraition first you have to complete your account. Like you are idea person than you have to put idea in you account or on dashboard so investors can see about your idea and contact you for your idea and if you are investor than you have to write about your company and your interesting field for investment so idea will be notify to you.  
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                        How this website will help us?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    From this website if someone have idea but does not have money than they can meet investor which are registered on our website for develope idea. And investor can find their interested area to invest.
                                </div>
                            </div>
                        </div>

                    </div>
                </div><!--collapse col-->
                
            </div>
        </div>
        
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

</body>
</html>