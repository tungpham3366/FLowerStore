/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class Cart {
    private List<Items> items;  

    public Cart() {
        items = new ArrayList<>();
    }
    public List<Items> getItems()
    {
        return items;
    }
    public int getQuantityById(int id)
    {
        return getItemsById(id).getQuantity();
    }
    private Items getItemsById(int id)
    {
        for(Items i:items)
        {
            if(i.getProduct().getFlower_id()==id){
                return i;
            }
        }
        return null;
    }
    public void addItems(Items t)
    {
        if(getItemsById(t.getProduct().getFlower_id())!=null)
        {
            Items m = getItemsById(t.getProduct().getFlower_id());
            m.setQuantity(m.getQuantity()+t.getQuantity());
        }
        else items.add(t);
    }
    
    public void removeItems(int id)
    {
        if(getItemsById(id)!=null)
        {
            items.remove(getItemsById(id));
        }
    }
    
    public double getTotalMoney()
    {
        double t=0;
        for(Items i:items)
        {
            t+=(i.getQuantity()*i.getPrice());
        }
        return t;
    }
    private Product getProductById(int id, List<Product> list)
    {
        for (Product i : list) {
            if(i.getFlower_id()==id)
                return i;
        }
        return null;
    }
    public Cart(String txt, List<Product> list)
    {
        items = new ArrayList<>();
        try{
        if(txt!=null && txt.length()!=0)
        {
            String[] s =txt.split("/");
            for(String i: s)
            {
                String [] n=i.split(":");
                int id = Integer.parseInt(n[0]);
                int quantity = Integer.parseInt(n[1]);
                Product p = getProductById(id, list);
                Items t = new Items(p,quantity,p.getPrice()*2);
                addItems(t);
            }
        }
        }catch(NumberFormatException e)
        {
             
        }
    }
}

