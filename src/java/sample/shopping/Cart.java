/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ACER
 */
public class Cart {
    private Map<String, Tea> cart;

    public Cart() {
    }

    public Cart(Map<String, Tea> cart) {
        this.cart = cart;
    }

    public Map<String, Tea> getCart() {
        return cart;
    }

    public void setCart(Map<String, Tea> cart) {
        this.cart = cart;
    }
    // them san pham vao gio hang
    public boolean add(Tea tea){
        boolean check = false;
        try {
            if(this.cart == null){
                this.cart = new HashMap<>();
            }
            if(this.cart.containsKey(tea.getId())){
                int currentQuantity = this.cart.get(tea.getId()).getQuantity();
                tea.setQuantity(currentQuantity + tea.getQuantity());
            }
            this.cart.put(tea.getId(), tea);
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public boolean remove(String id) {
        boolean check = false;
        try {
            if(this.cart!=null){
                if(this.cart.containsKey(id)){
                    this.cart.remove(id);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public boolean edit(String id, Tea tea) {
        boolean check = false;
        try {
            if(this.cart!= null) {
                if(this.cart.containsKey(id)){
                    this.cart.replace(id, tea);
                }
            }
        } catch (Exception e) {
        }
        return check;
    }
}
