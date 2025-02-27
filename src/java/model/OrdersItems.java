/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class OrdersItems {
    private int order_item_id;
    private Orders order_id;
    private Product flower_id;
    private int quantity;
    private int subtotal;

    public OrdersItems() {
    }

    public OrdersItems(int order_item_id, Orders order_id, Product flower_id, int quantity, int subtotal) {
        this.order_item_id = order_item_id;
        this.order_id = order_id;
        this.flower_id = flower_id;
        this.quantity = quantity;
        this.subtotal = subtotal;
    }

    public int getOrder_item_id() {
        return order_item_id;
    }

    public void setOrder_item_id(int order_item_id) {
        this.order_item_id = order_item_id;
    }

    public Orders getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Orders order_id) {
        this.order_id = order_id;
    }

    public Product getFlower_id() {
        return flower_id;
    }

    public void setFlower_id(Product flower_id) {
        this.flower_id = flower_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(int subtotal) {
        this.subtotal = subtotal;
    }
    
}
