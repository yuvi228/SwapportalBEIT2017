<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ideaperson- Find Investor</title>
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
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="col-sm-3 margin40">
					<ul class="list-unstyled side-nav">
                        <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/userlogin.jsp"><i class="fa fa-dashboard"></i>Upload your Proposal</a></li>
                        
                        <li><a href="<%=request.getContextPath() %>/wp-content/Frontend/faq.jsp"><i class="fa fa-history"></i> FAQ</a></li>
                    </ul>
                    </div>
                    <div class="col-md-8">
        <h3 class="title-section">Idea Person</h3>
        <div class="row property-listing">
         
         <p style="text-align:justify" class="sub-text margin60">               
                        Swap Portal's primary objective is to help fund high quality start ups by connecting entrepreneurs to qualified investors from around the world. <br/>

				<b>Once your proposal is approved we ensure the following features and key benefits:</b> <br/>  <br/>
We list your investment proposal on Venture Fund for all registered investors to see. <br/> <br/>
We send your investment proposal to investors that we feel would be interested. We never spam investors with random investment proposals. <br/>
After this initial send-out to our investors, we will continue promoting your investment proposals by sending it out to all new investors that we approve to use our service and can be sure that we are working hard to find you an interested party. <br/><br/>
You will be notified each time when an investor has expressed an interest in your proposal and wishes to discuss your proposal further.<br/> <br/>
<a href="<%=request.getContextPath()%>/wp-content/Frontend/userlogin.jsp"><b>Click here</b> </a>to upload your proposal.
              
                        
            </p>            
                    </div><!--property listing row-->
                 </div>
             <jsp:include page="footer.jsp"></jsp:include>
        
<!--                        <!--scripts and plugins -->
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