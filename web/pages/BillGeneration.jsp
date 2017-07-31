<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/27/2017
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DMS : Admin</title>
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
            <li><a href='Home.jsp'><span class= " glyphicon glyphicon-home" aria-hidden = "true"></span> Home</a></li>
            <li><a href='ViewOperator.jsp'><span class= "glyphicon glyphicon-user" aria-hidden = "true"></span> Operators</a></li>
            <li><a href='ViewVehicle.jsp'><i class="fa fa-car" aria-hidden="true"></i> Vehicle</a></li>
            <li><a href='ViewSpareParts.jsp'><i class="fa fa-wrench" aria-hidden="true"></i> SpareParts</a></li>
            <li><a href='#'><i class="fa fa-list-alt" aria-hidden="true"></i> Orders</a></li>
            <li class="active"><a href='ViewService.jsp'><i class="fa fa-cog" aria-hidden="true"></i> Service</a></li>
            <li><a href='AboutUs.jsp'><i class="fa fa-address-book" aria-hidden="true"></i> About</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a id="login-link">
                <span class="glyphicon glyphicon-log-in"></span> <%=session.getAttribute("username")%></a>
            </li>
        </ul>
    </div>
</nav>
<div class="row">
    <div class="col-sm-2">
        <ul class="nav nav-pills nav-stacked">
            <li><a href='ViewService.jsp'><i class="fa fa-wpforms" aria-hidden="true"></i> View</a></li>
            <li ><a href='addService.jsp'><i class="fa fa-plus" aria-hidden="true"></i> Add</a></li>
            <li class = 'active'><a href='BillGeneration.jsp'><i class="fa fa-plus" aria-hidden="true"></i> Bill</a></li>
        </ul>
    </div>
    <div class = "col-sm-8">
        <form action="../GenerateBill" method="post">
            <div class = "form-group row">
                <label for="sid" class="col-sm-2 col-form-label">Service Id</label>
                <div class="col-sm-10">
                    <input class="form-control" type="text" id="sid" name="sid">
                </div>
            </div>
            <div class = "form-group row">
                <label for="amount" class="col-sm-2 col-form-label">Amount</label>
                <div class="col-sm-10">
                    <input class="form-control" type="number" id="amount" name="amt">
                </div>
            </div>
            <button type="submit" class="btn btn-success">Generate Bill</button>
        </form>
    </div>
</div>
</body>
</html>


