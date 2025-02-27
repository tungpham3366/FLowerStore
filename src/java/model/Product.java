/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class Product {

    /*
    
      ,[category_id]
      ,[name]
      ,[describe]
      ,[status]
      ,[price]
      ,[date]
      ,[country]
      ,[discount]
      ,[images]
      ,[subcategory_id]
      ,[color]
     */
    private int flower_id;
    private Category category_id;
    private String name;
    private String describe;
    private int status;
    private double price;
    private String date;
    private Country country;
    private double discount;
    private String images;
    private SubCategory subcategory_id;
    private String color;

    public Product() {
    }

    public Product(int flower_id, Category category_id, String name, String describe, int status, double price, String date, Country country, double discount, String images, SubCategory subcategory_id, String color) {
        this.flower_id = flower_id;
        this.category_id = category_id;
        this.name = name;
        this.describe = describe;
        this.status = status;
        this.price = price;
        this.date = date;
        this.country = country;
        this.discount = discount;
        this.images = images;
        this.subcategory_id = subcategory_id;
        this.color = color;
    }

    public Product(Category category_id, String name, String describe, double price, String color, String images, int status, String date) {
        this.category_id = category_id;
        this.name = name;
        this.describe = describe;
        this.status = status;
        this.price = price;
        this.date = date;

        this.images = images;

        this.color = color;
    }

    public Product(int flower_id, Category category_id, String name, String describe, double price, String color, String images, int status, String date) {
        this.flower_id = flower_id;
        this.category_id = category_id;
        this.name = name;
        this.describe = describe;
        this.status = status;
        this.price = price;
        this.date = date;

        this.images = images;

        this.color = color;
    }

    public Product(int flower_id, String name, String describe, int status, double price, String date, double discount, String color) {
        this.flower_id = flower_id;
        this.name = name;
        this.describe = describe;
        this.status = status;
        this.price = price;
        this.date = date;
        this.discount = discount;
        this.color = color;
    }

    public int getFlower_id() {
        return flower_id;
    }

    public void setFlower_id(int flower_id) {
        this.flower_id = flower_id;
    }

    public Category getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Category category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public SubCategory getSubcategory_id() {
        return subcategory_id;
    }

    public void setSubcategory_id(SubCategory subcategory_id) {
        this.subcategory_id = subcategory_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Product{" + "flower_id=" + flower_id + ", name=" + name + ", describe=" + describe + ", status=" + status + ", price=" + price + ", date=" + date + ", discount=" + discount + ", color=" + color + '}';
    }

}
