
package DAO;

import Model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAOAccount extends DBContext{
    
    public List<Account> getAllListAccount(){
        List<Account> lAccount = new ArrayList<>();
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[role]\n"
                + "      ,[active]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Account]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                Account a = new Account(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role"),
                        rs.getBoolean("active"),
                        rs.getString("email"));
                lAccount.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return lAccount;
    }
    
    public Account checkAccount(String username , String password){
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[role]\n"
                + "      ,[active]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [username] = ? and [password] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                Account a = new Account(
                        rs.getString("username"), 
                        rs.getString("password"), 
                        rs.getInt("role"), 
                        rs.getBoolean("active"), 
                        rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }       
        return null;
    }
    public Account checkAccountByUserEmail(String username,String email){
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[role]\n"
                + "      ,[active]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where username = ? and email= ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery(); 
            if(rs.next()){
                Account a = new Account(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role"), 
                        rs.getBoolean("active"), 
                        rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }       
        return null;
    }
    public Account checkAccountByUser(String username){
        String sql = "SELECT [username]\n"
                + "      ,[password]\n"
                + "      ,[role]\n"
                + "      ,[active]\n"
                + "      ,[email]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery(); 
            if(rs.next()){
                Account a = new Account(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("role"), 
                        rs.getBoolean("active"), 
                        rs.getString("email"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }       
        return null;
    }
    
    
    public void updateAccount(Account a){
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[role] = ?\n"
                + "      ,[active] = ?\n"
                + "      ,[email] = ?\n"
                + " WHERE username = ?";
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setInt(3, a.getRole());
            ps.setBoolean(4, a.isActive());
            ps.setString(5, a.getEmail());
            ps.setString(6, a.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void insertAccount(Account a){
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[role]\n"
                + "           ,[active]\n"
                + "           ,[email])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setInt(3, a.getRole());
            ps.setBoolean(4, a.isActive());
            ps.setString(5, a.getEmail());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void deleteAccount(String username){
        String sql = "DELETE FROM [dbo].[Account]\n"
                + "      WHERE username= ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    
    public static void main(String[] args) {
        DAOAccount da = new DAOAccount();
        String username = "hihi";
        da.deleteAccount(username);
    }
}
