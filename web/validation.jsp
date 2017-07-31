<%@ page import="Helpers.Validation" %><%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 7/24/2017
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int permission = Validation.login(username, password);
        if(session != null){
            if(permission != 0) {
                session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("password", password);
                session.setAttribute("user", permission);
                if(permission == 1){
                    RequestDispatcher rd=request.getRequestDispatcher("entities/admin.jsp");
                    rd.forward(request, response);
                }
                else{
                    RequestDispatcher rd=request.getRequestDispatcher("entities/operator.jsp");
                    rd.forward(request, response);
                }
            }

            else {
                RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
                rd.include(request, response);
            }
        }
        else{
        %> <script>alert("You are already logged in!!") </script><%
        }

    %>
</body>
</html>
