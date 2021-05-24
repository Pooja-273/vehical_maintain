package model;

import android.text.SpannableString;

import java.io.Serializable;
import java.util.List;

public class OrderDetail implements Serializable {
    public static final String TYPE_ORDER_DETAIL="detail",TYPE_EXTRA_SERVICE="extra";

    public int id;
    public Employee employee;
    public Vehicle vehicle;
    public String pickupAddress;
    public String readyBy;
    public String code;
    public int discount;
    public String dropOffAddress;
    public int estimated;
    public int pickupCharge;
    public boolean isEmergency;

    public boolean isCancellable;

    public String locality;
    public String pickupTiming;

    public String pickupDate;

    public int dueAmt;

    public List<OrderService> services;

    public String additionInfo;
    public ServiceCenter center;
    public String status;

    public String getPickupTiming(){
        return "Pickup on "+pickupDate+" "+pickupTiming;
    }


    public class Vehicle{
        public int id;
        public String name;
        public int type;
        public Brand brand;

        public String registrationNumber;
        public String kms;



    }

    public class Brand{
        public int id;
        public String name;
        public String logo;
    }

    public class OrderService implements Serializable{
        public int id;
        public String name;
        public int price;
        public int orderDetailId;

        public int serviceId=0;




    }



}
