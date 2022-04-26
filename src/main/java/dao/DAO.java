/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tinpi
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct (){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM coffee_hutech.product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
            }
        }catch (Exception e){}
        
        return list;
    }
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM coffee_hutech.category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        }catch (Exception e){}
        return list;
    }
    public List<Product> getProductBycID (String cid){
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM coffee_hutech.product\n" +
                        "where category = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
            }
        }catch (Exception e){}
        
        return list;
    }
    public Account login(String username, String password){
        String query = "SELECT * FROM coffee_hutech.account\n" +
                "where username = ?\n" +
                "and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
            }
        }catch (Exception e) {}
        return null;
    }
    public Account checkAccountExist(String username){
        String query = "SELECT * FROM coffee_hutech.account\n" +
                "where username = ?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
            }
        }catch (Exception e) {}
        return null;
    }
    public void signup(String username, String password) {
        String query = "insert into coffee_hutech.account (username, password) values (?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Product getProduct(String txt) {
        String query = "SELECT * FROM coffee_hutech.product WHERE id = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, txt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                1);
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM coffee_hutech.product WHERE sell_ID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Product getProductByID(String id) {
        String query = "select * from coffee_hutech.product\n" +
                        "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void deleteProduct(String pid) {
        String query = "delete from coffee_hutech.product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String img, String price, String cate_ID) {
        String query = "insert into coffee_hutech.product(name, image, price, category) values (?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, price);
            ps.setString(4, cate_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String cate_ID, String pid) {
        String query = "update coffee_hutech.product\n" +
                        "set name = ?, image = ?, price = ?, category = ?\n" +
                        "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, cate_ID);
            ps.setString(5, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        //List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        for(Category o : listC) {
            System.out.println(o);
        }
        //dao.signup("vinh", "222");
    }
}
