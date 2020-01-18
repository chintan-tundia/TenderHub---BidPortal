/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tenderhub.model;

/**
 *
 * @author Chlongan
 */
public class SignUpModel {
    public String fname;   
    public String lname;
    public String email;
    public long mobileno;
    public String websiteaddress;
    public String pass;

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobileno(long mobileno) {
        this.mobileno = mobileno;
    }

    public void setWebsiteaddress(String websiteaddress) {
        this.websiteaddress = websiteaddress;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getEmail() {
        return email;
    }

    public long getMobileno() {
        return mobileno;
    }

    public String getWebsiteaddress() {
        return websiteaddress;
    }

    public String getPass() {
        return pass;
    }

    public SignUpModel(String fname, String lname, String email, long mobileno, String websiteaddress, String pass) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobileno = mobileno;
        this.websiteaddress = websiteaddress;
        this.pass = pass;
    }

    
    
}
