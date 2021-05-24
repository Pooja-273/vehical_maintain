package model;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class ServiceCenter implements Serializable {
    public int id;
    public String name;
    public String ratings;

    public boolean doesPickUp;

    public boolean isAuthorized;

    public boolean isApproved;

    public int pickupCharge;

    public String logoUrl;

    public double latitude,longitude;
    public String status;
    public String mobile;
    private Calendar startsFrom;
    public ArrayList<Integer> workingDays;
    public List<Review> reviews = new ArrayList<>();
    public float distance;
    public int startIndex;
    public String area;

        }



