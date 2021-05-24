package model;




import java.io.Serializable;

public class VehicleServiceItem implements Serializable{
    public String description;
    public int id;
    public float price;
    public int type;
    public String name;
    public boolean isSelected;
    public int currentSelected=-1;
    public int order;

    public VehicleServiceItem(){}


}
