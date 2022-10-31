/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;


/**
 *
 * @author colby
 */

public class Role {
    private String name;
    private int id;
    
    public Role() {
        
    }
    
    public Role(int id) {
        this.id = id;
        
        if (id == 1) {
            this.name = "System Admin";
        }
        
        if (id == 2) {
            this.name = "Regular User";
        }
        
        if (id == 3) {
            this.name = "error";
        }
    }
    
    public String getName() {
        return name;
    }
    
    public int getID() {
        return id;
    }
}