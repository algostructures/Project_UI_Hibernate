package Servlets;

import Hibernate.HQLManage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by prajapas on 7/27/2017.
 */
@WebServlet(name = "AddService")
public class AddService extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String vm = (String)request.getAttribute("vm");
        String owner = (String)request.getParameter("owner");
        int odm = Integer.parseInt((String)request.getParameter("odm"));
        boolean isFree = Boolean.parseBoolean(request.getParameter("free"));
        HQLManage hq = new HQLManage();
        hq.addServiceVehicle(vm, owner, odm, isFree);
        response.sendRedirect("pages/ViewService.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
