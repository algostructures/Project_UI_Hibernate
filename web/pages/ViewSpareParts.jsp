<%@ page import="DAO.SparePartsDaoImpl" %>
<%@ page import="entities.SpareParts" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/24/2017
  Time: 7:39 PM
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
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <link rel='stylesheet prefetch' href='https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css'>
    <link rel="stylesheet" href="../css/style.css">
    <script>
        $(document).ready(function() {
        $('#pagein').DataTable();
    });
    </script>
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
            <li class="active"><a href='ViewSpareParts.jsp'><i class="fa fa-wrench" aria-hidden="true"></i> SpareParts</a></li>
            <li><a href='#'><i class="fa fa-list-alt" aria-hidden="true"></i> Orders</a></li>
            <li><a href='ViewService.jsp'><i class="fa fa-cog" aria-hidden="true"></i> Service</a></li>
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
            <li class = 'active '><a href='ViewSpareParts.jsp'><i class="fa fa-wpforms" aria-hidden="true"></i> View</a></li>
            <li><a href='AddSpareParts.jsp'><i class="fa fa-plus" aria-hidden="true"></i> Add</a></li>
            <li><a href='#'><i class="fa fa-minus" aria-hidden="true"></i> Remove</a></li>
        </ul>
    </div>
    <div class = "col-sm-8">
        <table id = "pagein" class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Vehicle Model</th>
                    <th>Price</th>
                    <th>Tax</th>
                    <th>Units</th>
                </tr>
            </thead>
            <tbody>
            <%
                SparePartsDaoImpl sp = new SparePartsDaoImpl();
                List<SpareParts> ar =  sp.getAllSpareParts();
                int i = 0;
                for(SpareParts parts : ar) {
                    %><tr>
                        <td> <%out.print((++i));%> </td>
                        <td> <%out.print(parts.getSparepart_ID());%> </td>
                        <td> <%out.print(parts.getSparepartName());%> </td>
                        <td> <%out.print(parts.getVehicle_model());%> </td>
                        <td> <%out.print(parts.getPrice());%> </td>
                        <td> <%out.print(parts.getTax());%> </td>
                        <td> <%out.print(parts.getNumbers());%> </td>
                    </tr><%
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
