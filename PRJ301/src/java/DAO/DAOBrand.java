
package DAO;

import Model.Brand;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class DAOBrand extends DBContext{
    
    public List<Brand> getAllListBrand(){
        List<Brand> lB = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM [dbo].[Brand]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Brand b = new Brand(
                rs.getInt("id"),
                rs.getString("name"));
                lB.add(b);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return lB;
    }
    
    public Brand getBrandById(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "  FROM  [dbo].[Brand]\n"
                + "  where id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Brand b = new Brand(
                        rs.getInt("id"),
                        rs.getString("name"));
                return b;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAOBrand db = new DAOBrand();
        List<Brand> b = db.getAllListBrand();
        for (Brand brand : b) {
            System.out.println(brand);
        }
    }
}
