
package DAO;

import Model.Account;
import Model.Customers;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DAOCustomers extends DBContext{
    
    public void insertCustomer(Account a , Customers c){
        String sql = "INSERT INTO [dbo].[Customers]\n"
                + "           ([username]\n"
                + "           ,[fullName]\n"
                + "           ,[address]\n"
                + "           ,[phoneNumber])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, c.getFullName());
            ps.setString(3, c.getAddress());
            ps.setInt(4, c.getPhoneNumber());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void updateCustomer(Account a , Customers c){
        String sql = "UPDATE [dbo].[Customers]\n"
                + "   SET [fullName] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[phoneNumber] = ?\n"
                + " WHERE customerId = 1";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getFullName());
            ps.setString(2, c.getAddress());
            ps.setInt(3, c.getPhoneNumber());
//            ps.setInt(4, c.getCustomerId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        DAOCustomers dc = new DAOCustomers();
        Account a = new Account();
        a.setUsername("chien2002");
        Customers c = new Customers();
        c.setFullName("kaka");
        dc.updateCustomer(a, c);
//        c.setUsername(a.getUsername());
//        c.setFullName("robert ngueyn");
//        c.setAddress("me linh ha noi");
//        c.setPhoneNumber(0373661632);
//        dc.insertCustomer(a, c);
    }
    
}
