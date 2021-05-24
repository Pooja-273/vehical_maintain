package model;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Vehicle extends SugarRecord implements Serializable {

    public String brand;
    public String name;
    @SerializedName("registration_number")
    public String regNumber;
    @SerializedName("brand_id")
    public long brandId;
    @SerializedName("vehicle_id")
    public long vehicleId;

    public int type;
    @SerializedName("user_vehicle_id")
    public long userVehicleId;

    public Vehicle(){
        super();
        brand="";
        name="";
        regNumber = "";
        brandId=-1;
        type=-1;
    }

    public Vehicle(JSONObject data) throws JSONException {
        super();
        name = data.getString(Api.NAME);
        brand = data.getJSONObject(Api.BRAND).getString(Api.NAME);
        brandId = data.getJSONObject(Api.BRAND).getLong(Api.ID);
        vehicleId = data.getLong(Api.ID);
        userVehicleId = data.getLong(Api.USER_VEHICLE_ID);
        type = data.getInt(Api.TYPE);
        regNumber = data.has(Api.REGISTRATION_NO) ? data.getString(Api.REGISTRATION_NO) :   null;
    }

    public int getVehicleIcon(){
        switch (type){
            case Constants.MOTORCYCLE : return R.drawable.motorcycle;
            case Constants.SCOOTER  :   return R.drawable.scooter;
            case Constants.CAR  :   return R.drawable.car;
        }
        return -1;
    }

    public String getVehicleType(){
        switch (type){
            case Constants.MOTORCYCLE   :   return "Motorcycle";
            case Constants.CAR          :   return "Car";
            case Constants.SCOOTER      :   return "Scooter";
            default: return "Motorcycle";
        }
    }
    public String getName(){
        return brand+ " "+ name;
    }
    public static void addVehicles(JSONArray data) throws JSONException{
        List<Vehicle> vehicles = new ArrayList<>();
        int len = data.length();
        for(int i=0;i<len;i++){
            vehicles.add(new Vehicle(data.getJSONObject(i)));
        }
        Vehicle.saveInTx(vehicles);
    }
    @Override
    public String toString() {
        return "Vehicle { brand : "+ brand
                +" name: "+ name+"  ,vehicleId : "+
                vehicleId+" registration number : "+
                regNumber+" Brand Id : "+
                brandId+" User Vehicle Id :"+
                userVehicleId+" Type :"+
                type+" }";
    }

    public void print(){
//        Log.d("Vehicle",brand+" "+
//                        name+"  "+
//                        vehicleId+" "+
//                        regNumber+" "+
//                        brandId+" "+
//                        userVehicleId+" "+
//                        type);
    }

    @Override
    public boolean equals(Object obj) {
        return obj instanceof Vehicle && ((Vehicle) obj).getId() == this.getId();
    }

}
