/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author tinpi
 */
public class Product {
    private int id;
    private String name;
    private String img;
    private double price;
    private int amount;
    private String sell_ID;
    public Product(){
        
    }
    
    public Product(int id, String name, String img, double price) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
    }
    public Product(int id, String name, String img, double price, int amount) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.amount = amount;
    }
    public Product(int id, String name, String img, double price, String sell_ID) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.sell_ID = sell_ID;
    }
    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    

    public String getSell_ID() {
        return sell_ID;
    }

    public void setSell_ID(String sell_ID) {
        this.sell_ID = sell_ID;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", img=" + img + ", price=" + price + ", amount=" + amount + ", sell_ID=" + sell_ID + '}';
    }


}
