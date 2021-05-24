package model;

import java.io.Serializable;

public class OrderList implements Serializable {

    private static final String TAG = "OrderList";
    public int id;
    public String readyBy;
    public String completedOn;
    public Vehicle userVehicle;
    //    @SerializedName("user_vehicle_id")
//    private int userVehicleId;
    public String status;
    public float estimated;
    public ServiceCenter center;
    public Employee employee;
    public String pickupDate;
    public String pickupTime;
    public String placedOn;

    public String selectedService;

    public Review review;

    public String identifier;


    @Override
    public String toString() {
        return "{ Order id : "+id+" readyBy :"+readyBy+" vehicle : \n"+userVehicle.toString()+" \nstatus :"+status+" estimated :"+estimated+" }";
    }

    //    public void setVehicle() {
//        Log.d(TAG,"userVehicleId "+userVehicleId);
//        userVehicle = Vehicle.find(Vehicle.class, NamingHelper.toSQLNameDefault("userVehiclId")+"=?",userVehicleId+"").get(0);
//    }

}
