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
import model.Admin;
import model.Category;
import model.Customer;
import model.Product;

/**
 *
 * @author PC
 */
public class AccountDAO extends DBContext {

    public Customer check(String username, String password) {
        String sql = "SELECT [customer_id]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[firstname]\n"
                + "      ,[lastname]\n"
                + "      ,[gender]\n"
                + "      ,[email]\n"
                + "      ,[address]\n"
                + "      ,[information]\n"
                + "      ,[dob]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "      ,[avatar]\n"
                + "  FROM [dbo].[Customers]"
                + "  where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
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
                return a;
            }
        } catch (SQLException e) {

        }
        return null;
    }
    
    public Customer getCustomerByUserName(String username) {
        String sql = "select * from Customers where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
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
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Customer getCustomerById(int customer_id) {
        String sql = "select * from Customers where customer_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, customer_id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
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
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public void insert(Customer c) {
        String sql = "INSERT INTO [dbo].[Customers]\n" +
"           ([username]\n" +
"           ,[password]\n" +
"           ,[firstname]\n" +
"           ,[lastname]\n" +
"           ,[gender]\n" +
"           ,[email]\n" +
"           ,[address]\n" +
"           ,[information]\n" +
"           ,[dob]\n" +
"           ,[phone]\n" +
"           ,[role]\n" +
"           ,[avatar])\n" +
"     VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getUsername());
            st.setString(2, c.getPassword());
            st.setString(3, c.getFirstname());
            st.setString(4, c.getLastname());
            st.setBoolean(5, c.isGender());
            st.setString(6, c.getEmail());
            st.setString(7, c.getAddress());
            st.setString(8, c.getInformation());
            st.setString(9, c.getDob());
            st.setString(10, c.getPhone());
            st.setInt(11, c.getRole());
            st.setString(12, c.getAvatar());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void update(Customer c) {     
 String sql = "UPDATE [dbo].[Customers]\n" +
"   SET [username] = ?,[password]=? \n" +
"      ,[firstname] = ?\n" +
"      ,[lastname] = ?\n" +
"      ,[gender] = ?\n" +
"      ,[email] = ?\n" +
"      ,[address] = ?\n" +
"      ,[information] = ?\n" +
"      ,[dob] = ?\n" +
"      ,[phone] = ?\n" +
"      ,[role] = ?\n" +
"      ,[avatar] = ?\n" +
" WHERE customer_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getUsername());
            st.setString(2, c.getPassword());
            st.setString(3, c.getFirstname());
            st.setString(4, c.getLastname());
            st.setBoolean(5, c.isGender());
            st.setString(6, c.getEmail());
            st.setString(7, c.getAddress());
            st.setString(8, c.getInformation());
            st.setString(9, c.getDob());
            st.setString(10, c.getPhone());
            st.setInt(11, c.getRole());
            st.setString(12, c.getAvatar());
            st.setInt(13, c.getCustomer_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
     public void updatePassword(int id, String pass) {    
 String sql = "update Customers set password=? where customer_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
     
         public void updateRole(int id, int role) {    
 String sql = "update Customers set role=? where customer_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, role);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public boolean checkUserName(String username) {
        String sql = "SELECT [customer_id]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[firstname]\n"
                + "      ,[lastname]\n"
                + "      ,[gender]\n"
                + "      ,[email]\n"
                + "      ,[address]\n"
                + "      ,[information]\n"
                + "      ,[dob]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "      ,[avatar]\n"
                + "  FROM [dbo].[Customers]"
                + "  where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                
                return true;
            }
        } catch (SQLException e) {

        }
        return false;
    }
    
 public boolean checkUserEmail(String email) {
        String sql = "SELECT [customer_id]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[firstname]\n"
                + "      ,[lastname]\n"
                + "      ,[gender]\n"
                + "      ,[email]\n"
                + "      ,[address]\n"
                + "      ,[information]\n"
                + "      ,[dob]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "      ,[avatar]\n"
                + "  FROM [dbo].[Customers]"
                + "  where email=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                
                return true;
            }
        } catch (SQLException e) {

        }
        return false;
    }
    
    public List<Customer> getAllCustomers() {
        String sql = "SELECT [customer_id]\n"
                + "      ,[username]\n"
                + "      ,[password]\n"
                + "      ,[firstname]\n"
                + "      ,[lastname]\n"
                + "      ,[gender]\n"
                + "      ,[email]\n"
                + "      ,[address]\n"
                + "      ,[information]\n"
                + "      ,[dob]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "      ,[avatar]\n"
                + "  FROM [dbo].[Customers]";
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
            System.out.println(e);
        }
        return list;
    }

    public void signIn(Customer c)
    {
        String sql="insert into Customers values(?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getUsername());
            st.setString(2, c.getPassword());
            st.setInt(3, c.getRole());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        AccountDAO c = new AccountDAO();
int userid = 1;
        AccountDAO ud = new AccountDAO();
        Customer u  = ud.getCustomerById(userid);
            System.out.println(u.getUsername());
        
    }
}
