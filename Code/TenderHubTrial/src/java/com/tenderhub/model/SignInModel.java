/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tenderhub.model;

/**
 *
 * @author Chintan
 */
public class SignInModel {
    public String email;
    public String pass;
    public String name;
    public int id;
    
    public SignInModel(String email, String pass) {
        this.email = email;
        this.pass = pass;
    }

    public SignInModel(String email, String name, int id) {
        this.email = email;
        this.name = name;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
    
}
