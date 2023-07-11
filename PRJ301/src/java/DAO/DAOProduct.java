package DAO;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
public class DAOProduct extends DBContext {

    public List<Product> getAllListProduct() {
        List<Product> l = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt("ProductID"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                l.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return l;
    }

    public List<Product> getAllListProductSortByPrice() {
        List<Product> l = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n"
                + "  order by [competitive_price] desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getInt("ProductID"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                l.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return l;
    }

    public List<Product> getAllListProductByCategory(int cid, int index) {
        List<Product> l = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where category_id  = ?\n"
                + "  order by ProductId \n"
                + "  OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ps.setInt(2, index);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                l.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return l;
    }

    public List<Product> getAllListProductByBrand(int bid) {
        List<Product> l = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where [brand_id]  = ?\n";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, bid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                l.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return l;
    }

    public Product getProductById(int pid) {
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where ProductId=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Product(
                        rs.getInt("ProductId"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getAllProductByCount(int cid) {
        String sql = "SELECT count(*)  FROM [dbo].[Product] where category_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public void deleteProduct(int id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE ProductId = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(Product p) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "      SET [name] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[category_id] = ?\n"
                + "      ,[historical_cost] = ?\n"
                + "      ,[competitive_price] = ?\n"
                + "      ,[brand_id] = ?\n"
                + "      ,[imgae_product] = ?\n"
                + "      ,[new_products] = ?\n"
                + "      ,[best_selling] = ?\n"
                + "      ,[created_at] = ?\n"
                + "      ,[updated_at] = ?\n"
                + "      ,[Quantity] = ?\n"
                + "      ,[View_count] = ?\n"
                + "      ,[size] = ?\n"
                + " WHERE [ProductId] = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getDescription());
            ps.setInt(3, p.getCategoryId());
            ps.setDouble(4, p.getHistorical_cost());
            ps.setDouble(5, p.getCompetitive_price());
            ps.setInt(6, p.getBrandId());
            ps.setString(7, p.getImage());
            ps.setBoolean(8, p.isNewProducts());
            ps.setBoolean(9, p.isBestSelling());
            ps.setDate(10, p.getCreated());
            ps.setDate(11, p.getUpdated());
            ps.setInt(12, p.getQuantity());
            ps.setInt(13, p.getViewCount());
            ps.setInt(14, p.getSize());
            ps.setInt(15, p.getProductId());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertProduct(Product p) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([name]\n"
                + "           ,[description]\n"
                + "           ,[category_id]\n"
                + "           ,[historical_cost]\n"
                + "           ,[competitive_price]\n"
                + "           ,[brand_id]\n"
                + "           ,[imgae_product]\n"
                + "           ,[new_products]\n"
                + "           ,[best_selling]\n"
                + "           ,[created_at]\n"
                + "           ,[updated_at]\n"
                + "           ,[Quantity]\n"
                + "           ,[View_count]\n"
                + "           ,[size])\n"
                + "     VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getDescription());
            ps.setInt(3, p.getCategoryId());
            ps.setDouble(4, p.getHistorical_cost());
            ps.setDouble(5, p.getCompetitive_price());
            ps.setInt(6, p.getBrandId());
            ps.setString(7, p.getImage());
            ps.setBoolean(8, p.isNewProducts());
            ps.setBoolean(9, p.isBestSelling());
            ps.setDate(10, p.getCreated());
            ps.setDate(11, p.getUpdated());
            ps.setInt(12, p.getQuantity());
            ps.setInt(13, p.getViewCount());
            ps.setInt(14, p.getSize());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> searchByName(String key) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n"
                + "  where [name] like '%" + key + "%'";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getAllListProductDesc(int value) {
        List<Product> l = new ArrayList<>();
        String sql = "SELECT [ProductId]\n"
                + "      ,[name]\n"
                + "      ,[description]\n"
                + "      ,[category_id]\n"
                + "      ,[historical_cost]\n"
                + "      ,[competitive_price]\n"
                + "      ,[brand_id]\n"
                + "      ,[imgae_product]\n"
                + "      ,[new_products]\n"
                + "      ,[best_selling]\n"
                + "      ,[created_at]\n"
                + "      ,[updated_at]\n"
                + "      ,[Quantity]\n"
                + "      ,[View_count]\n"
                + "      ,[size]\n"
                + "  FROM [dbo].[Product]\n";
        if(value != 0){
            sql += "order by competitive_price desc" ;
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(
//                        rs.getInt("ProductID"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getInt("category_id"),
                        rs.getDouble("historical_cost"),
                        rs.getDouble("competitive_price"),
                        rs.getInt("brand_id"),
                        rs.getString("imgae_product"),
                        rs.getBoolean("new_products"),
                        rs.getBoolean("best_selling"),
                        rs.getDate("created_at"),
                        rs.getDate("updated_at"),
                        rs.getInt("Quantity"),
                        rs.getInt("View_count"),
                        rs.getInt("size")
                );
                l.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return l;
    }

    public static void main(String[] args) {
        DAOProduct dp = new DAOProduct();
        int pid = 7;
        Product p = dp.getProductById(pid);
        p.setName("Duong");
        dp.updateProduct(p);
        Product p2 = dp.getProductById(pid);
        System.out.println(p2);
    }
}
