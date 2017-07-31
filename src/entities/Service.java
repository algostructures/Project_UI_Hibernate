package entities;

/**
 * Created by prajapas on 7/26/2017.
 */
public class Service {
    int id;
    String vehicleModel;
    String owner;
    int odometer;
    boolean free;

    public Service() {

    }

    public Service(String vehicleModel, String owner, int odometer, boolean free) {
        this.vehicleModel = vehicleModel;
        this.owner = owner;
        this.odometer = odometer;
        this.free = free;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public int getOdometer() {
        return odometer;
    }

    public void setOdometer(int odometer) {
        this.odometer = odometer;
    }

    public boolean isFree() {
        return free;
    }

    public void setFree(boolean free) {
        this.free = free;
    }
}
