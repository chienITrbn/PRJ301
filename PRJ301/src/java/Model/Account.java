
package Model;


public class Account {
    private String username;
    private String password;
    private int role;
    private boolean active;
    private String email;

    public Account() {
    }

    public Account(String username, String password, int role, boolean active, String email) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.active = active;
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" + "username=" + username + ", password=" + password + ", role=" + role + ", active=" + active + ", email=" + email + '}';
    }
    
    
}
