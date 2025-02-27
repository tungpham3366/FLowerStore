/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.awt.Image;
import java.sql.Date;
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
public class CategoryDAO extends DBContext {

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //executeQuery chi co tac dung voi lenh "select"
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("name"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Category getCategoryById(int id) {
        String sql = "select * from Category where category_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("category_id"),
                        rs.getString("name"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Country getCountryById(int id) {
        String sql = "select * from Country where country_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Country co = new Country(rs.getInt("country_id"),
                        rs.getString("name"));
                return co;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    

    public SubCategory getSubCategoryById(int id) {
        String sql = "select * from Sub_Category where category_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                SubCategory sc = new SubCategory();
                sc.setSubcategory_id(rs.getInt("subcategory_id"));
                sc.setName(rs.getString("name"));
                Category c = getCategoryById(rs.getInt("category_id"));
                sc.setCateogry_id(c);
                return sc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

//    public List<Product> search(String key, Date from, Date to,
//            Double price1,Double price2, int cid){
//        List<Product> list = new ArrayList<>();
//        String sql="select * from Products where 1=1 ";
//        if(key!=null && !key.equals(""))
//        {
//            sql+="and name like '%"+key+"%' or describe like '%"+key+"%'";
//        }
//        if(from!=null)
//        {
//            sql+="and date>='"+from+"'";
//        }
//        if(to!=null)
//        {
//            sql+="and date>='"+to+"'";
//        }
//        if(price1!=null)
//        {
//            sql="and price >="+price1;
//        }
//        if(price2!=null)
//        {
//            sql="and price <="+price2;
//        }
//        if(cid!=0)
//        {
//            sql+="and category_id="+cid;
//        }
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {                
//                 Product p = new Product();
//                p.setFlower_id(rs.getInt("flower_id"));
//                p.setName(rs.getString("name"));
//                p.setDescribe(rs.getString("describe"));
//                p.setStatus(rs.getBoolean("status"));
//                p.setPrice(rs.getDouble("price"));
//                p.setDate(rs.getDate("date"));
//                p.setImages(rs.getString("images"));
//                p.setDiscount(rs.getDouble("discount"));
//                p.setColor(rs.getString("color"));
//                list.add(p);
//            }
//        } catch (SQLException e) {
//        }
//        return list;
//    }
    
    
    
//    public List<Product> getIncomingProducts() {
//        String sql = "SELECT Top 3 [flower_id]\n"
//                + "      ,[category_id]\n"
//                + "      ,[name]\n"
//                + "      ,[describe]\n"
//                + "      ,[status]\n"
//                + "      ,[price]\n"
//                + "      ,[date]\n"
//                + "      ,[country]\n"
//                + "      ,[discount]\n"
//                + "      ,[images]\n"
//                + "      ,[subcategory_id]\n"
//                + "      ,[color]\n"
//                + "  FROM [dbo].[Products]\n"
//                + "  order by date desc";
//         List<Product> list = new ArrayList<>();
//        try {
//           
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Product p = new Product();
//                p.setFlower_id(rs.getInt("flower_id"));
//                Category c = getCategoryById(rs.getInt("category_id"));
//                p.setCategory_id(c);
//                p.setName(rs.getString("name"));
//                p.setDescribe(rs.getString("describe"));
//                p.setStatus(rs.getBoolean("status"));
//                p.setPrice(rs.getDouble("price"));
//                p.setDate(rs.getString("date"));
//                Country co = getCountryById(rs.getInt("country"));
//                p.setCountry(co);
//                p.setDiscount(rs.getDouble("discount"));
//                SubCategory sub = getSubCategoryById(rs.getInt("subcategory_id"));
//                p.setSubcategory_id(sub);
//                p.setColor(rs.getString("color"));
//                list.add(p);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
    
    
    
//    public List<Product> getAllProducts() {
//        String sql = "SELECT * from Products ";
//        List<Product> list = new ArrayList<>();
//        try {
//
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Product p = new Product();
//                p.setFlower_id(rs.getInt("flower_id"));
//                Category c = getCategoryById(rs.getInt("category_id"));
//                p.setCategory_id(c);
//                p.setName(rs.getString("name"));
//                p.setDescribe(rs.getString("describe"));
//                p.setStatus(rs.getBoolean("status"));
//                p.setPrice(rs.getDouble("price"));
//                p.setDate(rs.getString("date"));
//                Country co = getCountryById(rs.getInt("country"));
//                p.setCountry(co);
//                p.setDiscount(rs.getDouble("discount"));
//                SubCategory sub = getSubCategoryById(rs.getInt("subcategory_id"));
//                p.setSubcategory_id(sub);
//                p.setColor(rs.getString("color"));
//                list.add(p);
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return list;
//    }
    public static void main(String[] args) {
        CategoryDAO c = new CategoryDAO();
        List<Category> list = c.getAll();
        Category ca= c.getCategoryById(3);
    }
}
