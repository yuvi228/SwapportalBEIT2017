<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
		<link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- custom css -->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css" rel="stylesheet">
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
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body class="invoice">
        <div class="divide80"></div>
        <h1 class="text-center"><a href="index.html">Swap Portal</a></h1>
        <div class="container invoice-outer">
            <div class="invoice-inner">
                <div class="row invoice-header">
                    <div class="col-sm-6">
                        <h2>Rajan Patel</h2>
                    </div> 
                    <div class="col-sm-6 invoice-header-right">
                        <h5>#123456789 / 20, October 2013</h5>
<!--                         <span>lorem ipsum dolor sit</span> -->
                    </div>
                </div><!--row invoice header end-->
                <hr>
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="about-client">
                            <h4><strong>Client</strong> details</h4>
                            <ul class="list-unstyled">
                                <li><strong>First Name:</strong> Rajan</li>
                                <li><strong>Last Name:</strong> Patel</li>
                                <li><strong>Country:</strong> India</li>
                                <li><strong>DOB:</strong> 1996/03/10</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="about-client">
                            <h4><strong>Payment</strong> details</h4>
                            <ul class="list-unstyled">
                                <li><strong>First Name:</strong> Rajan</li>
                                <li><strong>Last Name:</strong> Patel</li>
                                <li><strong>Country:</strong> India</li>
                                <li><strong>DOB:</strong> 1996/03/10</li>
                            </ul>
                        </div>
                    </div>
                </div><!--about client row end-->
                <div class="divide40"></div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Payment <strong>Invoice</strong></h3>
                            </div>

                            <div class="panel-body">

<!--                                 <p>Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets.</p> -->

                                <table class="table table-striped">
                                    <!-- table head -->
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Type</th>

                                            <th>Unit price</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>

                                    <!-- table items -->
                                    <tbody>
                                        <tr><!-- item -->
                                            <td>1</td>
                                            <td>Investor</td>

                                            <td>$20</td>
                                            <td>$20</td>
                                        </tr>
                                        
                                    </tbody>
                                </table>

                            </div>

                        </div>
                    </div>
                </div><!--invoice item row end-->
                <div class="divide40"></div>
                <div class="row">

                    <div class="col-sm-6">
                        <h4><strong>Contact</strong> Details</h4>

                        <p class="nomargin nopadding">
                            <strong>Note:</strong> 
<!--                         Lid est laborum dolo rumes fugats untras. Etharums ser quidem rerum facilis dolores nemis omnis fugats vitaes nemo minima rerums unsers sadips amets </p><br>no P margin for printing - use <br> instead -->

                        <address>
                            Ahmedabad,India<br>                
                            Email:swapportalsry@gmail.com
                        </address>

                    </div>

                    <div class="col-sm-6 text-right">

                        <ul class="list-unstyled">
                            <li><strong>Sub - Total Amount:</strong> $20.00</li>
                           
                        </ul>

                        <div>
                            <button class="btn btn-theme-bg" onclick="window.print();"><i class="fa fa-print"></i> Print</button>            
                            <button class="btn border-black">Invoice Submit</button>            
                        </div>

                    </div>

                </div>
                <hr>
                <span class="copyright-info">&copy; Copyright 2015 | Assan theme.Created by Rakesh sharma</span>
            </div>
        </div><!--invoice outer-->
        <div class="divide80"></div>
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