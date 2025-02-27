/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import model.Product;

/**
 *
 * @author PC
 */
public class DAO extends DBContext {

    public List<Customer> getMostPayCustomer() {
        String sql = "select top 2 * from Customers c, Orders o\n"
                + "where c.customer_id = o.customer_id\n"
                + "order by total_amount desc";
        List<Customer> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer a = new Customer(
                        rs.getInt("customer_id"),
                        rs.getString("username"), rs.getString("password"),
                        rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getBoolean("gender"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("information"),
                        rs.getString("dob"),
                        rs.getString("phone"),
                        rs.getInt("role"),
                        rs.getString("avatar"));
                list.add(a);

            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Customer> getBanedCustomer() {
        String sql = "select top 2 * from Customers c, Orders o\n"
                + "where c.customer_id = o.customer_id\n"
                + "AND c.role = 4  or c.role=5";
        List<Customer> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer a = new Customer(
                        rs.getInt("customer_id"),
                        rs.getString("username"), rs.getString("password"),
                        rs.getString("firstname"),
                        rs.getString("lastname"),
                        rs.getBoolean("gender"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("information"),
                        rs.getString("dob"),
                        rs.getString("phone"),
                        rs.getInt("role"),
                        rs.getString("avatar"));
                list.add(a);

            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Product> getMostSellProduct() {
        String sql = "select top 2 * from Products p, Orders_Items o\n"
                + "where p.flower_id = o.flower_id\n"
                + "order by quantity desc";
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
        }
        return list;
    }

     public List<Product> getLeastSellProduct() {
        String sql = "select top 2 * from Products p, Orders_Items o\n"
                + "where p.flower_id = o.flower_id\n"
                + "order by quantity asc";
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
        }
        return list;
    }
     
     
    
    public static void main(String[] args) {
        DAO d = new DAO();
        List<Product> list = d.getMostSellProduct();
        System.out.println(list.get(0).getName());
    }
}
