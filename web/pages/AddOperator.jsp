<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/25/2017
  Time: 4:39 PM
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
    <script>
        function validate() {
            console.log("Hell Yeah");
            if (document.myForm.uid == "") {
                alert("Enter a name");
                document.myForm.uid.focus();
                return false;
            }
            if (!/^[a-zA-Z]*$/g.test(document.myForm.uid.value)) {
                alert("Invalid characters");
                document.myForm.uid.focus();
                return false;
            }
        }
    </script>
    <script>
        var xmlhttp;
        function f1(a1)
        {
            console.log(a1);
            xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=f2;
            xmlhttp.open("GET","http://localhost:8080/Ajax.jsp?id1="+a1,true);
            xmlhttp.send(null);
            console.log("iiiiiiii");
        }
        function f2()
        {
            if(xmlhttp.readyState===4 && xmlhttp.status===200)
            {
                str=xmlhttp.responseText;
                alert(str);
                console.log(str);
                if(str.trim()==="false") {
                    document.getElementById("modelnum").style.display="block";
                    document.getElementById("axy").focus();
                    return false;
                }
                else {
                    alert("model number does not exist");
                }
            }
        }

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
            <li class = 'active'><a href='ViewOperator.jsp'><span class= "glyphicon glyphicon-user" aria-hidden = "true"></span> Operators</a></li>
            <li><a href='ViewVehicle.jsp'><i class="fa fa-car" aria-hidden="true"></i> Vehicle</a></li>
            <li><a href='ViewSpareParts.jsp'><i class="fa fa-wrench" aria-hidden="true"></i> SpareParts</a></li>
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
            <li><a href='ViewOperator.jsp'><i class="fa fa-wpforms" aria-hidden="true"></i> View</a></li>
            <li class="active"><a href='AddOperator.jsp'><i class="fa fa-plus" aria-hidden="true"></i> Add</a></li>
            <li><a href='BlockOperator.jsp'><i class="fa fa-ban" aria-hidden="true"></i> Remove</a></li>
        </ul>
    </div>
    <div class = "col-sm-8">
        <form action="../AddOperator" method="post" name="myForm">
            <div class="form-group row">
                <span class="glyphicon glyphicon-remove-circle" id="modelnum" style="float: left;color: #f44336;padding-bottom: 2%;display: none">Operator Already Exists!!</span>
            </div>
            <div class = "form-group row">
                <label for="username" class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input class="form-control"  type="text"  id="username" name="uid" onblur=" f1(this.value)" id="axy">
                </div>
            </div>
            <div class = "form-group row">
                <label for="password" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input class="form-control" type="password" id="password" name="pwd">
                </div>
            </div>
            <button type="submit" class="btn btn-success" onclick="return validate()">Submit</button>
        </form>
    </div>
</div>
</body>
</html>
