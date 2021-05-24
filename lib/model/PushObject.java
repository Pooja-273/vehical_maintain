package model;

import android.content.Intent;

public class PushObject<T> {
    private T data;
    private int type;
    private String title;
    private String body;
    private Intent intent;


    public PushObject(T data,int type,Intent intent,String title,String body){
        this.type = type;
        this.data = data;
        this.intent = intent;
        this.title = title;
        this.body = body;
    }

    public Intent getIntent() {
        return intent;
    }
    public PushObject(){
        this.type=0;
        this.data = null;
    }

    public void setType(int type){this.type= type;}

    public int getType(){return type;}

    public T getData(){return data;}

    public void setData(T data){this.data = data;}
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
