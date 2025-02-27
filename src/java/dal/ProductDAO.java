/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.awt.Image;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Country;
import model.Images;
import model.Product;
import model.SubCategory;

/**
 *
 * @author PC
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        String sql = "SELECT * from Products ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getHugeProducts() {
        String sql = "SELECT * from Products ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                Category c = d.getCategoryById(rs.getInt("category_id"));
                p.setCategory_id(c);
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                SubCategory subcat = d.getSubCategoryById(rs.getInt("subcategory_id"));
                p.setSubcategory_id(subcat);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchByPrice(int max, int min) {
        String sql = "SELECT * from Products\n"
                + "where price < "+max+" and price>"+min;
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductsByDiscount() {
        String sql = "Select top 3 * from Products\n"
                + "order by discount desc ";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductsfromVietNam() {
        String sql = "Select top 3 * from Products\n"
                + "where country =1\n"
                + " order by price desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductsRandomly() {
        String sql = "SELECT TOP 3 * FROM Products ORDER BY NEWID();";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertProduct(Product d) {
        String sql = "INSERT INTO [dbo].[Products]\n"
                + "           ([category_id]\n"
                + "           ,[name]\n"
                + "           ,[describe]\n"
                + "           ,[status]\n"
                + "           ,[price]\n"
                + "           ,[date]\n"
                + "           ,[color]\n"
                + "           ,[images])\n"
                + "     VALUES (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getCategory_id().getCategory_id());
            st.setString(2, d.getName());
            st.setString(3, d.getDescribe());
            st.setInt(4, d.getStatus());
            st.setDouble(5, d.getPrice());
            st.setString(6, d.getDate());
            st.setString(7, d.getColor());
            st.setString(8, d.getImages());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Products]\n"
                + "      WHERE flower_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(Product p) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [category_id] = ?\n"
                + "      ,[name] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[status] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[date] = ?\n"
                + "      ,[color] = ?\n"
                + "      ,[images] = ?\n"
                + " WHERE flower_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, p.getCategory_id().getCategory_id());
            st.setNString(2, p.getName());
            st.setNString(3, p.getDescribe());
            st.setInt(4, p.getStatus());
            st.setDouble(5, p.getPrice());
            st.setString(6, p.getDate());
            st.setNString(7, p.getColor());
            st.setString(8, p.getImages());
            st.setInt(9, p.getFlower_id());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> searchByColor(String color) {
        String sql = "select * from Products  where color like '%"+color+"%'";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                DAO d = new DAO();
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> getProductByDate(int msg) {
        String sql = "Select top 10 * from Products\n"
                + " order by [date] ";
        if (msg == 1) {
            sql += "asc";
        } else if(msg==2) {
            sql += "desc";
        }
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            CategoryDAO d = new CategoryDAO();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = "SELECT * from Products where flower_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductByCategoryId(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * from Products where 1=1";
        if (cid != 0) {
            sql += "and category_id=" + cid;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                Category c = d.getCategoryById(rs.getInt("category_id"));
                p.setCategory_id(c);
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                SubCategory subcat = d.getSubCategoryById(rs.getInt("subcategory_id"));
                p.setSubcategory_id(subcat);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> searchByName(String name) {
        String sql = "select * from Products  where name like '%" + name + "%'";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                DAO d = new DAO();
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Images> getImagesByFlowerId(int id) {
        String sql = "SELECT * from Images where flower_id = ?";
        List<Images> list = new ArrayList<>();
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Images p = new Images();
                p.setImage_id(rs.getInt("image_id"));
                p.setImage_URL(rs.getString("image_URL"));
                Product pr = getProductById(rs.getInt("flower_id"));
                p.setProduct_id(pr);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductBySubCategoryId(int scat) {
        String sql = "select * from Products  where subcategory_id = '" + scat + "'";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CategoryDAO d = new CategoryDAO();
                Product p = new Product();
                p.setFlower_id(rs.getInt("flower_id"));
                Category c = d.getCategoryById(rs.getInt("category_id"));
                p.setCategory_id(c);
                p.setName(rs.getString("name"));
                p.setDescribe(rs.getString("describe"));
                p.setStatus(rs.getInt("status"));
                p.setPrice(rs.getDouble("price"));
                p.setDate(rs.getString("date"));
                p.setImages(rs.getString("images"));
                p.setDiscount(rs.getDouble("discount"));
                p.setColor(rs.getString("color"));
                SubCategory subcat = d.getSubCategoryById(rs.getInt("subcategory_id"));
                p.setSubcategory_id(subcat);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO c = new ProductDAO();
        Images i = new Images();
        CategoryDAO cd = new CategoryDAO();
        // List<Images> list = c.getImagesByFlowerId(1);
//        System.out.println(c.getImagesByFlowerId(1).get(0).getImage_URL());
        List<Product> list = c.getProductByDate(1);
        System.out.println(list.get(0).getName());

//        Category ca = cd.getCategoryById(3);
//        Country co = new Country(3, "tg");
//        SubCategory sc = new SubCategory(3, "2", ca);
//        Product p = new Product(65, ca, "name", "", 0, 0, "", co, 7, "", sc, "red");
//        System.out.println(p.getFlower_id());
//        c.updateProduct(p);
//        
//       
        //de.getFlower_id(),c, name, describe,status, price,  date, de.getCountry(),de.getDiscount(), imagegs ,de.getSubcategory_id(), color
    }
}
