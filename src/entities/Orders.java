package entities;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by prajapas on 7/13/2017.
 */
public class Orders {
    private int id;
    private String orderedBy;
    private String vehicleModel;
    private String sparePartId;
    private String sparePartName;
    private String operation;
    private int numbers;
    private double price;
    private double tax;
    private Date date;

    public Orders() {
    }

    public Orders(String orderedBy, String vehicleModel, String sparePartId, String sparePartName, String operation, int numbers, double price, double tax, Date date) {
        this.orderedBy = orderedBy;
        this.vehicleModel = vehicleModel;
        this.sparePartId = sparePartId;
        this.sparePartName = sparePartName;
        this.operation = operation;
        this.numbers = numbers;
        this.price = price;
        this.tax = tax;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrderedBy() {
        return orderedBy;
    }

    public void setOrderedBy(String orderedBy) {
        this.orderedBy = orderedBy;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(String sparePartId) {
        this.sparePartId = sparePartId;
    }

    public String getSparePartName() {
        return sparePartName;
    }

    public void setSparePartName(String sparePartName) {
        this.sparePartName = sparePartName;
    }

    public String getOperation() {
        return operation;
    }

    public void setOperation(String operation) {
        this.operation = operation;
    }

    public int getNumbers() {
        return numbers;
    }

    public void setNumbers(int numbers) {
        this.numbers = numbers;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTax() {
        return tax;
    }

    public void setTax(double tax) {
        this.tax = tax;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
