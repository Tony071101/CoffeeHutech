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
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(5), rs.getDouble(3)));
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
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3));
            }
        }catch (Exception e) {}
        return null;
    }
    public Account checkAccoutnExist(String username){
        String query = "SELECT * FROM coffee_hutech.account\n" +
                "where username = ?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3));
            }
        }catch (Exception e) {}
        return null;
    }
    public void Signup(String username, String password){
        String query = "insert into coffee_hutech.account(username,password) values (?,?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        }catch(Exception e){}
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        for(Category o : listC) {
            System.out.println(o);
        }
    }
}
