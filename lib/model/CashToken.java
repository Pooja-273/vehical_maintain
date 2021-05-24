package model;

public class CashToken {


    private String paymentOrderId;
    private String OrderId;
    private String paymentIdentifier;
    private String duoAmount;
    private String cftoken;
    public CashToken() {
    }

    public String getOrderId() {
        return OrderId;
    }

    public void setOrderId(String orderId) {
        OrderId = orderId;
    }

    public String getPaymentIdentifier() {
        return paymentIdentifier;
    }

    public void setPaymentIdentifier(String paymentIdentifier) {
        this.paymentIdentifier = paymentIdentifier;
    }

    public CashToken(String paymentOrderId, String orderId, String paymentIdentifier, String duoAmount, String cftoken) {
        this.paymentOrderId = paymentOrderId;
        OrderId = orderId;
        this.paymentIdentifier = paymentIdentifier;
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
