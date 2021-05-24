package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class VehicleServiceCat {
    public int id;
    public String name;
    public String icon;
    public int order;
    public List<VehicleServiceItem> items;
    public List<VehicleServiceItem> selectedItems = new ArrayList<>();
    public HashMap<Integer,Integer> childParent;
    public HashMap<Integer,Integer> parentChild;
    public int totalServices = 0;
    public boolean isCurrent = false;
    int totalSelectedServices = 0;
    @Override
    public String toString() {
        return "\nVehicleServiceCat : { id:"+id+" ,name:"+name+" ,icon: "+icon+" ,items "+items.toString()+" \nchildParent:"+childParent.toString()+" \nparentChild: "+parentChild.toString();
    }
    }
