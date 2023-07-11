
package DAO;

import Model.Size;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAOSize extends DBContext{
    public List<Size> getAllSize(){
        List<Size> s = new ArrayList<>();
        String sql = "SELECT [idSize]\n"
                + "      ,[Size]\n"
                + "  FROM [dbo].[Size]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) { 
                Size nS = new Size(
                rs.getInt("idSize"),
                rs.getInt("Size"));
                s.add(nS);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return s;
    }
    
    
    public Size getSizeById(int id) {
        String sql = "SELECT [idSize]\n"
                + "      ,[Size]\n"
                + "  FROM [dbo].[Size]\n"
                + "  where idSize =  ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Size c = new Size(
                        rs.getInt("idSize"),
                        rs.getInt("Size"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        int s = 2;
        DAOSize ds = new DAOSize();
        System.out.println(ds.getSizeById(s));
    }
}
