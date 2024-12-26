 <%@page import="com.model.Investor"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    List<Register> student = (List<Register>) session.getAttribute("Userbyid");
    %>
    
    <%
    if (student != null && !student.isEmpty()) {
		Iterator<Register> it = student.iterator();
		Register reg= null;
		
		while (it.hasNext()) {
			reg = it.next();
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit form</title>

        <!-- END META SECTION -->
        
<link rel="icon" href="<%=request.getContextPath() %>/favicon.ico" type="image/x-icon" />
<link href="<%=request.getContextPath() %>/css/bootstrap/bootstrap.min.css" rel="stylesheet">
        <!-- custom css (blue color by default) -->
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" media="screen">
        <!-- font awesome for icons -->
        <link href="<%=request.getContextPath() %>/css/fontawesome/font-awesome.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/font-awesome/font-awesome.min.css" rel="stylesheet">
        <!-- flex slider css -->
        <link href="<%=request.getContextPath() %>/css/flexslider.css" rel="stylesheet" type="text/css" media="screen">
        <!-- animated css  -->
        <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/Pe-icon-7-stroke.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/sky-forms.css" rel="stylesheet" type="text/css" media="screen">
        <!--owl carousel css-->
        <link href="<%=request.getContextPath() %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="screen">
        <link href="<%=request.getContextPath() %>/css/owl.theme.css" rel="stylesheet" type="text/css" media="screen">
        <!--mega menu -->
        <link href="<%=request.getContextPath() %>/css/yamm.css" rel="stylesheet" type="text/css">
        <!--popups css-->
        <link href="<%=request.getContextPath() %>/css/magnific-popup.css" rel="stylesheet" type="text/css">

</head>
<body background="<%=request.getContextPath() %>/Image/bg.jpg">
<jsp:include page="header.jsp"></jsp:include>

<center>
<div class="registration-container">            
            <div class="registration-box animated fadeInDown">
                <div class="registration-logo"></div>
                               <div class="registration-body">
                    <div class="registration-title"><strong>Edit Information</strong>, use form below</div>
                    <div class="registration-subtitle"> </div>
                  
                    <form action="<%=request.getContextPath() %>/Controller?id=<%=reg.getId() %>" class="form-horizontal" method="post">
                     <input type="hidden" name="actionCode" value="updateData">   
                    <h4>Personal info</h4>

						<div class="form-group">
							<div class="col-md-6">
								<select class="form-control select" name="st" disabled>
									<option value="" <%= reg.getType() == null ? "selected" : "" %>>Select Type</option>
            						<option value="Investor" <%= "Investor".equals(reg.getType()) ? "selected" : "" %>>Investor</option>
            						<option value="Ideaperson" <%= "Ideaperson".equals(reg.getType()) ? "selected" : "" %>>Idea Person</option>

								</select>
							</div>
						</div>

						<div class="form-group">
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Name" name="name" value="<%=reg.getName()%>"/>
                        </div>
                    </div>
                     
                    
                    
                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="E-mail" name="email" value="<%=reg.getEmail()%>"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Phone No" name="pn" value="<%=reg.getPhone()%>"/>
                        </div>
                    </div>
                    
                    <h4>Authentication</h4>                    
                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Username" name="un" value="<%=reg.getUsername()%>"/>
                        </div>
                    </div>                        
                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="password" class="form-control" placeholder="Password" name="password" value="<%=reg.getPassword()%>"/>
                        </div>
                    </div>                    
                
                    <div class="form-group push-up-30">
                        
                        <div class="col-md-3">
                            <button class="btn btn-danger btn-block">Update</button>
                        </div>
                    </div>
                    <%
			}
			}
		%>
                    </form>
                    
                </div>
               
                <div class="registration-footer">
                    <div class="pull-left">
                        &copy; 2016 Swap Portal
                    </div>
                    <div class="pull-right">
                        <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>
                    </div>
                </div>
            </div>
            
        </div>
        </center>
        <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/plugins/jquery/jquery-ui.min.js"></script>
                
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        
        <script type='text/javascript' src='<%=request.getContextPath() %>/js/plugins/bootstrap/bootstrap-datepicker.js'></script>                
                        
        
      
       
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        
        <script type="text/javascript" src="<%=request.getContextPath() %>/js/plugins.js"></script>        
      
        
         <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-36783416-1', 'auto');
        ga('send', 'pageview');
    </script>        
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter25836617 = new Ya.Metrika({
                        id:25836617,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true,
                        webvisor:true
                    });
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = "<%= request.getContextPath()%>/js/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/25836617" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->   
</body>
</html>