package model;

import android.text.TextUtils;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

public class Order implements Serializable {
    public ObservableField<Vehicle> selectedVehicle;
    public ServiceCenter selectedCenter;
    public List<VehicleServiceItem> selectedItems;
    public Code code;
    public ObservableFloat estimatedCost;
    public int dropoffCharge = 0;
    public String city;
    public ObservableField<String> locality;
    public Calendar selectedDate;
    public int selectedSlot;
    public boolean isEmergency;
    public Address pickupAddress, dropoffAddress;
    public ServiceCategory selectedCategory;
    public int id;
    public String additionalComment;
    public int creditDiscount = -1;
    public boolean useCredits;
    public Employee employee;
    public double latitude, longitude;
    public String identifier;
    public String payment_method;
    public List<Integer> selectedCats = new ArrayList<>();


    }

