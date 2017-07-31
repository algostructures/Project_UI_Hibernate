<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/24/2017
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DMS : Admin</title>
    <script></script>
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
    <script src="https://use.fontawesome.com/9d0c2e3dbb.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<nav class='navbar navbar-inverse navbar-fixed'>
    <div class='container-fluid'>
        <div class='navbar-header'>
            <a class='navbar-brand' href='#'>DMS</a>
        </div>
        <ul class='nav navbar-nav'>
            <li class='active'><a href='pages/Home.jsp'><span class= " glyphicon glyphicon-home" aria-hidden = "true"></span> Home</a></li>
            <li><a href='pages/ViewOperator.jsp'><span class= "glyphicon glyphicon-user" aria-hidden = "true"></span> Operators</a></li>
            <li><a href='pages/ViewVehicle.jsp'><i class="fa fa-car" aria-hidden="true"></i> Vehicle</a></li>
            <li><a href='pages/ViewSpareParts.jsp'><i class="fa fa-wrench" aria-hidden="true"></i> SpareParts</a></li>
            <li><a href='#'><i class="fa fa-list-alt" aria-hidden="true"></i> Orders</a></li>
            <li><a href='pages/ViewService.jsp'><i class="fa fa-cog" aria-hidden="true"></i> Service</a></li>
            <li><a href='pages/AboutUs.jsp'><i class="fa fa-address-book" aria-hidden="true"></i> About</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a id="login-link">
                <i class="fa fa-id-badge" aria-hidden="true"></i><%=session.getAttribute("username")%></a>
            </li>
            <li><a id="logout-link">
                <span class="glyphicon glyphicon-log-out"></span> Log Out</a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">
    <div class="col-sm-2">

    </div>
    <div class = "col-sm-8">
        <div class="container">
            <h2 class="title">Welcome to DMS : <%= session.getAttribute("username")%></h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="../images/Coursal_3.jpg" alt="Los Angeles" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Los Angeles</h3>
                            <p>LA is always so much fun!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="../images/Coursal_1.jpg" alt="Chicago" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="../images/Coursal_2.jpg" alt="New York" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>New York</h3>
                            <p>We love the Big Apple!</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

    </div>
</div>
<br>
<br>
<br>
<footer class="row-footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
            </div>
            <div class="col-xs-6 col-sm-5">
                <h5>Our Address</h5>
                <address>
                    221, Baker Street<br>
                    London, UKn<br>
                    Earth<br>
                    <i class="fa fa-phone"></i>: +140 1234 5678<br>
                    <i class="fa fa-fax"></i>: +140 8765 4321<br>
                    <i class="fa fa-envelope"></i>:
                    <a href="mailto:confusion@food.net">saurabhkumar.prajajati@cdk.com</a>
                </address>
            </div>
            <div class="col-xs-12 col-xs-offset-2 col-sm-4 col-sm-offset-0">
                <div class="nav navbar-nav" style="padding: 40px 5px;">
                    <a class="btn btn-social-icon btn-google-plus" href="http://google.com/+"><i class="fa fa-google-plus circle"></i></a>
                    <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook circle"></i></a>
                    <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin circle"></i></a>
                    <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter circle"></i></a>
                    <a class="btn btn-social-icon btn-youtube" href="http://youtube.com/"><i class="fa fa-youtube circle"></i></a>
                </div>
            </div>
            <div class="col-xs-12">
                <p style="padding:2px;"></p>
                <p align="center">©Copyright 2015 CDK Global</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>