package model;

import org.json.JSONException;
import org.json.JSONObject;

public interface ModelInterface  {
    void loadModel();
    void saveModel();
    void setModel(JSONObject object) throws JSONException;
}

