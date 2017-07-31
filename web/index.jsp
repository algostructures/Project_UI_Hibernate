<%@ page import="Hibernate.HQLManage" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>DMS : Login</title>
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
  <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class="wrapper">
  <%
    HQLManage.preLoad();
  %>
  <form class="form-signin" action="/validation.jsp">
    <h2 class="form-signin-heading">Login</h2>
    <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
    <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
    <button class="btn btn-lg btn-success btn-block" type="submit">Login</button>
  </form>
</div>
</body>
</html>