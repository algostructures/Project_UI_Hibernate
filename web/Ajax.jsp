<%@ page import="DAO.VehicleDaoImpl"%>
<%@ page import="entities.Vehicle" %>
<%@ page import="DAO.OperatorDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="entities.Operator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% OperatorDaoImpl operatorDao = new OperatorDaoImpl();
    String operator = request.getParameter("id1");

    List<Operator> ls = operatorDao.getAllOperators();
    for(Operator os : ls) {
        if (os.getUserName().equals(operator)) {
            response.getWriter().write("false");
        }
    }
%>