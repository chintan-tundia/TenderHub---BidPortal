package com.tenderhub.model;

public class ContactUsModel {
    public String name;
    public String email;
    public String purpose;
    public String subject;
    public String message;

    public ContactUsModel(String name, String email, String purpose, String subject, String message) {
        this.name = name;
        this.email = email;
        this.purpose = purpose;
        this.subject = subject;
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPurpose() {
        return purpose;
    }

    public String getSubject() {
        return subject;
    }

    public String getMessage() {
        return message;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setMessage(String message) {
        this.message = message;
    }

  
  

}
