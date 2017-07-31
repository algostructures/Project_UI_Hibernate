package DAO;

import Hibernate.HQLManage;

import entities.Orders;
import entities.SpareParts;
import entities.Vehicle;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public class OrderDaoImpl implements OrderDao {

    public List<Orders> getAllOrders() {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.listOrders();
    }

    public List<Orders> getOrders(Date from, Date to) {
        List<Orders> orders= getAllOrders();
        List<Orders> newList = new ArrayList<>();
        for(Orders order : orders){
            if(order.getDate().before(to) && order.getDate().after(from)) {
                newList.add(order);
            }
        }
        return newList;
    }

    public boolean placeOrder(Orders order) {
        HQLManage hqlManage = new HQLManage();
        hqlManage.addOrder(order);
        if(order.getSparePartId().length()==0){
            Vehicle vehicle = new Vehicle(order.getVehicleModel(), order.getNumbers(), order.getPrice(), order.getTax());
            VehicleDaoImpl vd = new VehicleDaoImpl();
            vd.addVehicle(vehicle);
        }
        else{
            SpareParts spareParts = new SpareParts(order.getSparePartId(), order.getSparePartName(), order.getVehicleModel(), order.getPrice(), order.getTax(), order.getNumbers());
            SparePartsDaoImpl sp = new SparePartsDaoImpl();
            sp.addSparePart(spareParts);
        }
        return true;
    }
}
