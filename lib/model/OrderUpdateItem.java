package model;

import org.json.JSONException;
import org.json.JSONObject;

public class OrderUpdateItem {
    public int id;
    public String name;
    public String status;
    public String startTime;
    public String endTime;
    public int order;


    public static final String  IN_PROGRESS="in_progress",
            COMPLETED="completed",
            INCOMPLETE="incomplete";



    public OrderUpdateItem(String endTime){
        this.name = "Order confirmed";
        this.endTime = endTime;
        this.status =   COMPLETED;
        this.order = 1;
    }


}
