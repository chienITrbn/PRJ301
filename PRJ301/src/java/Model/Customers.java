
package Model;


public class Customers {
    private String username;
    private String fullName;
    private String address;
    private int customerId;
    private int phoneNumber;

    public Customers() {
    }

    public Customers(String username, String fullName, String address, int customerId, int phoneNumber) {
        this.username = username;
        this.fullName = fullName;
        this.address = address;
        this.customerId = customerId;
        this.phoneNumber = phoneNumber;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "Customers{" + "username=" + username + ", fullName=" + fullName + ", address=" + address + ", customerId=" + customerId + ", phoneNumber=" + phoneNumber + '}';
    }
    
    
}
