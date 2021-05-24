//package model;
//
//import java.io.Serializable;
//import java.text.ParseException;
//
//public class TransactionLog implements Serializable {
//    @SerializedName("id")
//    public int txId;
//    @SerializedName("amount")
//    public String amount;
//    @SerializedName("reference_id")
//    public int referenceId;
//    @SerializedName("payment_status")
//    public String paymentStatus;
//    @SerializedName("transaction_msg")
//    public String message;
//    @SerializedName("payment_mode")
//    public String mode;
//    @SerializedName("transaction_time")
//    public String time;
//    @SerializedName("order_id")
//    public String orderId;
//    @SerializedName("order_token")
//    public String orderToken;
//    @SerializedName("created_at")
//    public String createdAt;
//    @SerializedName("updated_at")
//    public String updatedAt;
//
//    public TransactionLog() {
//    }
//
//    public TransactionLog(int txId, String amount, int referenceId, String paymentStatus, String message, String mode, String time, String orderId, String orderToken, String createdAt, String updatedAt) {
//        this.txId = txId;
//        this.amount = amount;
//        this.referenceId = referenceId;
//        this.paymentStatus = paymentStatus;
//        this.message = message;
//        this.mode = mode;
//        this.time = time;
//        this.orderId = orderId;
//        this.orderToken = orderToken;
//        this.createdAt = createdAt;
//        this.updatedAt = updatedAt;
//    }
//
//    public String getFormatDate()  {
//        try {
//            return Utils.getFormatDate(time);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        return time;
//    }
//
//    public int getStatusIcon() {
//        if (paymentStatus.equals(Constants.FAIL)) {
//            return R.drawable.ic_fail;
//        } else {
//            return R.drawable.ic_success;
//        }
//    }
//
//    public String getStatus(){
//        if (paymentStatus.equals(Constants.FAIL)) {
//            return "Failure";
//        } else {
//            return "Success";
//        }
//    }
//
//    public int getStatusColor(){
//        if (paymentStatus.equals(Constants.FAIL)) {
//            return R.color.failtx;
//        } else {
//            return R.color.successtx;
//        }
//    }
//
//    public int getTxId() {
//        return txId;
//    }
//
//    public void setTxId(int txId) {
//        this.txId = txId;
//    }
//
//    public String getAmount() {
//        return amount;
//    }
//
//    public void setAmount(String amount) {
//        this.amount = amount;
//    }
//
//    public int getReferenceId() {
//        return referenceId;
//    }
//
//    public void setReferenceId(int referenceId) {
//        this.referenceId = referenceId;
//    }
//
//    public String getPaymentStatus() {
//        return paymentStatus;
//    }
//
//    public void setPaymentStatus(String paymentStatus) {
//        this.paymentStatus = paymentStatus;
//    }
//
//    public String getMessage() {
//        return message;
//    }
//
//    public void setMessage(String message) {
//        this.message = message;
//    }
//
//    public String getMode() {
//        return mode;
//    }
//
//    public void setMode(String mode) {
//        this.mode = mode;
//    }
//
//    public String getTime() {
//        return time;
//    }
//
//    public void setTime(String time) {
//        this.time = time;
//    }
//
//    public String getOrderId() {
//        return orderId;
//    }
//
//    public void setOrderId(String orderId) {
//        this.orderId = orderId;
//    }
//
//    public String getOrderToken() {
//        return orderToken;
//    }
//
//    public void setOrderToken(String orderToken) {
//        this.orderToken = orderToken;
//    }
//
//    public String getCreatedAt() {
//        return createdAt;
//    }
//
//    public void setCreatedAt(String createdAt) {
//        this.createdAt = createdAt;
//    }
//
//    public String getUpdatedAt() {
//        return updatedAt;
//    }
//
//    public void setUpdatedAt(String updatedAt) {
//        this.updatedAt = updatedAt;
//    }}
