/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author tinpi
 */
public class Account {
    private int uid;
    private String username;
    private String password;
    private int isAdmin;
    public Account() {
    }

    public Account(int uid, String username, String password, int isAdmin) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
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

    @Override
    public String toString() {
        return "Account{" + "uid=" + uid + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + '}';
    }
}
