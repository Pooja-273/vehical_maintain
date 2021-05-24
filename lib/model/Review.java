package model;

import android.text.Html;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

public class Review implements Serializable {
    public int id;
    public String comment;
    public String rating;
    public String user;
    public String vehicle;



    Review(String comment,String rating,String user,String vehicle){
        this.comment = comment;
        this.rating = rating;
        this.user = user;
        this.vehicle = vehicle;
    }

    @Override
    public String toString() {
        return "Review : { user : "+user+" vehicle : "+vehicle+"}"+ Html.fromHtml("<br>");
    }
}
