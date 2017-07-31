package Servlets;
import Hibernate.HQLManage;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import entities.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by prajapas on 7/27/2017.
 */
@WebServlet(name = "GenerateBill")
public class GenerateBill extends HttpServlet {
    private Object o;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("sid"));
        int amount = Integer.parseInt(request.getParameter("amt"));
        HQLManage.preLoad();
        HQLManage hm = new HQLManage();
        Service temp = null;
        List employees = hm.listServiceVehicleFull();
        for (Iterator iterator =
             employees.iterator(); iterator.hasNext();){
            Service eObj = (Service) iterator.next();
            if(eObj.getId() == id){
                temp = eObj;
                break;
            }
            //System.out.println(eObj);
        }
        response.setContentType("application/pdf");
        response.setHeader("Content-disposition","inline; filename='HelloWorld-Table.pdf'");



        try {
            Document document = new Document();
            PdfWriter.getInstance(document,
                    response.getOutputStream());

            document.open();

            PdfPTable table = new PdfPTable(4); // 3 columns.
            PdfPCell cell1 = new PdfPCell(new Paragraph("Service Id"));
            PdfPCell cell2 = new PdfPCell(new Paragraph("Owner"));
            PdfPCell cell3 = new PdfPCell(new Paragraph("Vehicle Model"));
            PdfPCell cell4 = new PdfPCell(new Paragraph("Bill(amt+tax)"));

            table.addCell(cell1);
            table.addCell(cell2);
            table.addCell(cell3);
            table.addCell(cell4);

            PdfPCell cell11 = new PdfPCell(new Paragraph(""+id));
            PdfPCell cell21 = new PdfPCell(new Paragraph(temp.getOwner()));
            PdfPCell cell31 = new PdfPCell(new Paragraph(temp.getVehicleModel()));
            double total =amount +  amount * 0.12;
            PdfPCell cell41 = new PdfPCell(new Paragraph(""+total));
            table.addCell(cell11);
            table.addCell(cell21);
            table.addCell(cell31);
            table.addCell(cell41);
            document.add(table);
            document.close();

        } catch(Exception e){
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
