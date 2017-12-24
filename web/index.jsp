<%@page import ="Chhat.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%boolean loginFlag=false;%>

<%
    try{
        if(session.getAttribute("sessionName")!=null)
        {
            loginFlag = true;
        }
    }catch(Exception ex){}
    
%>
    

<html>
    <head>
        <title>What The Chhat</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />

    </head>
    <body class="landing">

        <!-- Header -->
        <a href="index.jsp"></a>
        <header id="header" class="alt">
            <h1><a href="index.jsp">WhatTheChhat</a></h1>
            <a href="#nav">Menu</a>
        </header>

        <!-- Nav -->
        <nav id="nav">
            <ul class="links">
                <li><a href="index.html">Home</a></li>
                <li><a href="Login/index.jsp">Sign In</a></li>
                <li><a href="aboutUs.jsp">About Us</a></li>
                    <%
                        if (loginFlag) {
                    %>
                <li><a href="Explore/explore.jsp">Find a Chhat</a></li>
                <li><a href="addChhat.jsp">Request to add a Chhat</a></li>
                <li><a href="Logout.jsp">Log Out</a></li>
                
                <%
                    }
                %>

            </ul>
        </nav>

        <!-- Banner -->
        <section id="banner">
            <i class="icon fa-diamond"></i>
            <h2>What The Chhat</h2>
            <p>Moving you to better places.</p>
            <ul class="actions">
                <li>
                    <%if(!loginFlag){%><a  href="Login/index.jsp" class="button big special">Login</a>
                    <%}else{%><a  href="#" class="button big special">Welcome <%=session.getAttribute("sessionName")%></a><%}%>
                </li>
            </ul>
        </section>

        <!-- One -->
        <section id="one" class="wrapper style1">
            <div class="inner">
                <% if(loginFlag){%>
                <article class="feature left">
                    <span class="image"><img src="images/pic01.jpg" alt="" /></span>
                    <div class="content">
                        <h2>Finding Rental Homes was never this easy.</h2>
                        <p>
                            With WhatTheChhat you can find home anywhere you want. We provide service of getting you Rental Homes at your Comfort.</p>
                        <ul class="actions">
                            <li>
                                <a href="Explore/explore.jsp" class="button alt">Explore</a>
                            </li>
                        </ul>
                    </div>
                </article>
                <%}
                if(!loginFlag){
                %>
                
                <article class="feature right">
                    <span class="image"><img src="images/pic02.jpg" alt="" /></span>
                    <div class="content">
                        <h2>What's important is not just the location but the condition of the rental homes too. </h2>
                        <p>Finding our customers with the rental houses on the basis of the location they provided is not just what we do. Register here to learn more.</p>
                        <ul class="actions">
                            <li>
                                <a href="Login/index.jsp" class="button alt">Register</a>
                            </li>
                        </ul>
                    </div>
                </article>
                <%}%>
            </div>
        </section>

        <!-- Two -->
        <section id="two" class="wrapper special">
            <div class="inner">
                <header class="major narrow">
                    <h2>We Care For You :)</h2>
                    <p>You are asked to fill a form regarding your requirements that should be met. Our team will make sure before getting the Rental providers to you that your requirements are fulfilled.</p>
                </header>
                <div class="image-grid">
                    <a href="#" class="image"><img src="images/pic03.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic04.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic05.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic06.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic07.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic08.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic09.jpg" width="320" height="200" alt="" /></a>
                    <a href="#" class="image"><img src="images/pic10.jpg" width="320" height="200" alt="" /></a>
                </div>
                <ul class="actions">
                    <li>
                        <%if(loginFlag){%><a href="Explore/explore.jsp" class="button big alt">Find a Chhat</a>
                        <%}else{%><a href="Login/index.jsp" class="button big alt">Find a Chhat</a><%}%>
                    </li>
                </ul>
            </div>
            <div id="map" style="width:600px;height:400px"></div>
            
            <script>
            function myMap() {
                 var mapOptions = {
                 center: new google.maps.LatLng(30.2247, 78.7986),
                 zoom: 10,
                 mapTypeId: google.maps.MapTypeId.HYBRID};
                 var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        }
</script>
        </section>

        <!-- Three -->
        <section id="three" class="wrapper style3 special">
            <div class="inner">
                <header class="major narrow	">
                    <p>Made with love and lots of code.</p>
                </header>
                <ul class="actions">
                    <li><a href="aboutUs.jsp" class="button big alt">About Developers</a></li>
                </ul>
            </div>
        </section>

        <!-- Four -->
        <section id="four" class="wrapper style2 special">
            <div class="inner">
                <header class="major narrow">
                    <h2>Get in touch with our team.</h2>
                    <p>Write your queries/suggestions or a small message for our team. :)</p>
                </header>
                <form action="sendEmail.jsp" method="POST">
                    <div class="container 75%">
                        <div class="row uniform 50%">
                            <div class="6u 12u$(xsmall)">
                                <input name="Csubject" placeholder="Subject" type="text"  />
                            </div>
                            <div class="6u$ 12u$(xsmall)">
                                <input name="Cemail" placeholder="Email" type="email" />
                            </div>
                            <div class="12u$">
                                <textarea name="Cmessage" placeholder="Message" rows="4"></textarea>
                            </div>
                        </div>
                    </div>
                    <ul class="actions">
                        <li><input type="submit" class="special" value="Submit" /></li>
                        <li><input type="reset" class="alt" value="Clear" /></li>
                    </ul>
                </form>
            </div>
            
        </section>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBEGTNIjH_MEPU_6nww8zmof4DtT5Ghy4Y&callback=myMap"></script>
    </body>
</html>
