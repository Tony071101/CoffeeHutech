/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBContext {
    public Connection getConnection()throws Exception {
            String url = "jdbc:mysql://localhost:3306/coffee_hutech";
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url, userID, password);
    }
    private final String userID="root";
    private final String password="bjergsen07112001";
    public static void main(String[] args) {
        try{
            System.out.println(new DBContext().getConnection());
        }catch(Exception e){}
    }
}
