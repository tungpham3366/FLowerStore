/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class Customer {
    private int customer_id;
    private String username;
    private String password;
    private String firstname;
    private String lastname;
    private boolean gender;
    private String email;
    private String address;
    private String information;
    private String dob;
    private String phone;
    private int role;
    private String avatar;
    public Customer() {
    }

     public Customer( String username, String password, int role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public Customer(int customer_id, String username, String password, String firstname, String lastname, boolean gender, String email, String address, String information, String dob, String phone, int role, String avatar) {
        this.customer_id = customer_id;
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.email = email;
        this.address = address;
        this.information = information;
        this.dob = dob;
        this.phone = phone;
        this.role = role;
        this.avatar = avatar;
    }
    
    

    public Customer( String username, String password, String firstname, String lastname, boolean gender, String email, String address, String information, String dob, String phone, int role, String avatar) {
        
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.gender = gender;
        this.email = email;
        this.address = address;
        this.information = information;
        this.dob = dob;
        this.phone = phone;
        this.role = role;
        this.avatar = avatar;
    }    
    
    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
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

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    
}
