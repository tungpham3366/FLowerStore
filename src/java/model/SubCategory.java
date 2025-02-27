/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class SubCategory {
    private int subcategory_id;
    private String name;
    private Category cateogry_id;

    public SubCategory() {
    }

    public SubCategory(int subcategory_id, String name, Category cateogry_id) {
        this.subcategory_id = subcategory_id;
        this.name = name;
        this.cateogry_id = cateogry_id;
    }

    public int getSubcategory_id() {
        return subcategory_id;
    }

    public void setSubcategory_id(int subcategory_id) {
        this.subcategory_id = subcategory_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getCateogry_id() {
        return cateogry_id;
    }

    public void setCateogry_id(Category cateogry_id) {
        this.cateogry_id = cateogry_id;
    }
    
}
