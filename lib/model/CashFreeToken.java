package model;


import java.io.Serializable;

public class CashFreeToken implements Serializable {
    private String paymentOrderId;
    private String duoAmount;
    private String cftoken;

    public CashFreeToken() {
    }

    public CashFreeToken(String paymentOrderId, String duoAmount, String cftoken) {
        this.paymentOrderId = paymentOrderId;
        this.duoAmount = duoAmount;
        this.cftoken = cftoken;
    }

    public String getPaymentOrderId() {
        return paymentOrderId;
    }

    public void setPaymentOrderId(String paymentOrderId) {
        this.paymentOrderId = paymentOrderId;
    }

    public String getDuoAmount() {
        return duoAmount;
    }

    public void setDuoAmount(String duoAmount) {
        this.duoAmount = duoAmount;
    }

    public String getCftoken() {
        return cftoken;
    }

    public void setCftoken(String cftoken) {
        this.cftoken = cftoken;
    }
}
