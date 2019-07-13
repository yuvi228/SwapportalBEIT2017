<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
</head>
<body style="background-attachment: fixed;" background="<%=request.getContextPath() %>/Image/bg.jpg">
<footer id="footer">
            <div class="container">
        
                <div class="row">
                    <div class="col-md-4 col-sm-6 margin30">
                        <div class="footer-col">
                            <h3>About Swap Portal</h3>
                            <p>
                                A Social Online Platform for great Ideas/Startups and for Investors
                            </p>
                            <ul class="list-inline footer-social">
                                <li>
                                    <a href="#" class="social-icon si-dark si-gray-round si-colored-facebook">
                                        <i class="fa fa-facebook"></i>
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="social-icon si-dark si-gray-round si-colored-twitter">
                                        <i class="fa fa-twitter"></i>
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="social-icon si-dark si-gray-round si-colored-google-plus">
                                        <i class="fa fa-google-plus"></i>
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="social-icon si-dark si-gray-round si-colored-pinterest">
                                        <i class="fa fa-pinterest"></i>
                                        <i class="fa fa-pinterest"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="social-icon si-dark si-gray-round si-colored-linkedin">
                                        <i class="fa fa-linkedin"></i>
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>                        
                    </div><!--footer col-->
                    <div class="col-md-4 col-sm-6 margin30">
                        <div class="footer-col">
                            <h3>Contact</h3>

                            <ul class="list-unstyled contact">
                                <li><p><strong><i class="fa fa-map-marker"></i> Address:</strong> Ahmedabad- 380061, Gujarat</p></li> 
                                <li><p><strong><i class="fa fa-envelope"></i> Mail Us:</strong> <a href="">swapportalsry@gmail.com</a></p></li>
                                <li> <p><strong><i class="fa fa-phone"></i> Phone:</strong> +91 9898625282</p></li>
                              
                                <li> <p><strong><i class="fa fa-skype"></i> Skype</strong> yuvraj_96</p></li>

                            </ul>
                        </div>                        
                    </div><!--footer col-->
                    <div class="col-md-4 col-sm-6 margin30">
                        <div class="footer-col">
                            <h3>Quick Links</h3>
                            <ul class="list-inline f2-work" style="vertical-align: baseline;">
                                <li><a href="<%= request.getContextPath()%>/wp-content/Frontend/index.jsp" ><font color=#AEAEAE>Home</a></li>
                                <li><a href="<%= request.getContextPath()%>/wp-content/Frontend/feedback.jsp"><font color=#AEAEAE>Feedback</a></li>
                                <li><a href="<%= request.getContextPath()%>/wp-content/Frontend/faq.jsp"><font color=#AEAEAE>FAQ</a></li>
                                <li><a href="<%= request.getContextPath()%>/wp-content/Frontend/investor.jsp"><font color=#AEAEAE>Investor</a></li>
                                <li><a href="<%= request.getContextPath()%>/wp-content/Frontend/ideaperson.jsp"><font color=#AEAEAE>Ideaperson</a></li>
                                 </ul>
                        </div>                        
                    </div><!--footer col-->
                    

                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="footer-btm">
                            <span>&copy;2019.Swap Portal</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer><!--default footer end here-->

</body>
</html>