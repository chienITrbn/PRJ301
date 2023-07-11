
package Model;

import java.sql.Date;


public class Orders {
    private int orderId;
    private Date orderDate;
    private String status;
    private String email;
    private String phoneNumber;
    private String address;
    private String note;
    private double totalMoney;
    private int customerId;

    public Orders() {
    }

    public Orders(int orderId, Date orderDate, String status, String email, String phoneNumber, String address, String note, double totalMoney, int customerId) {
        this.orderId = orderId;
        this.orderDate = orderDate;
        this.status = status;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.note = note;
        this.totalMoney = totalMoney;
        this.customerId = customerId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    @Override
    public String toString() {
        return "Orders{" + "orderId=" + orderId + ", orderDate=" + orderDate + ", status=" + status + ", email=" + email + ", phoneNumber=" + phoneNumber + ", address=" + address + ", note=" + note + ", totalMoney=" + totalMoney + ", customerId=" + customerId + '}';
    }

}