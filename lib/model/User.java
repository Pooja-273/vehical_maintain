package model;


public class User extends Model{
    public int id;
    public String name;
    public String email;
    public String mobile;
    public String referralCode;
    public String lastLocality;
    public String lastCity;
    private String lkLat;
    private String lkLng;

    @Override
    public String toString() {
        return "Locality  :" +lastLocality;
    }




}
