package DAO;

import Hibernate.HQLManage;
import entities.Vehicle;
import java.util.List;

/**
 * Created by prajapas on 7/13/2017.
 */
public class VehicleDaoImpl implements VehicleDao {
    public List<Vehicle> getAllVehicles() {
        HQLManage hqlManage = new HQLManage();
        return  hqlManage.listVehicle();
    }

    public boolean addVehicle(Vehicle vehicle) {
       HQLManage hqlManage = new HQLManage();
       if(hqlManage.findVehicle(vehicle.getVehicle_model()) == null) {
           hqlManage.addVehicle(vehicle);
       }
       else{
           Vehicle vehicle1 = hqlManage.findVehicle(vehicle.getVehicle_model());
           vehicle.setNumber(vehicle1.getNumber()+vehicle.getNumber());
           hqlManage.updateVehicle(vehicle);
       }
       return true;
    }

    public boolean removeVehicles(String model, int number) {

        return false;
    }

    @Override
    public Vehicle findVehicle(String model) {
        HQLManage hqlManage = new HQLManage();
        return hqlManage.findVehicle(model);
    }

}