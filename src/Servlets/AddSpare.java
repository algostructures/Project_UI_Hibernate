package Servlets;

import DAO.OrderDaoImpl;
import entities.Orders;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by prajapas on 7/24/2017.
 */
@WebServlet(name = "AddSpare")
public class AddSpare extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        OrderDaoImpl od = new OrderDaoImpl();
        HttpSession ssn = request.getSession();
        String username = (String) ssn.getAttribute("username");
        String oId = request.getParameter("oid");
        System.out.println(oId);
        String vm = request.getParameter("vm");
        String spi = request.getParameter("spi");
        String spn = request.getParameter("spn");
        String op = "add";
        int num = Integer.parseInt(request.getParameter("units"));
        double pr = Double.parseDouble(request.getParameter("price"));
        double tax = Double.parseDouble(request.getParameter("tax"));
        String dt = request.getParameter("date");
        Date date = null;
        try {
            date = new SimpleDateFormat("yyyy-MM-dd").parse(dt);
            od.placeOrder(new Orders(username, vm, spi, spn, op, num, pr, tax, date));
            response.sendRedirect("pages/ViewSpareParts.jsp");
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
