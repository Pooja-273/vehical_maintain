package model;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

public class ServiceCategory implements Serializable {
    public long id;
    public int type;
    public String name;
    public String imageUrl;
    public boolean isAvailable;

    public ServiceCategory(){
        this.name="";
    }




}
