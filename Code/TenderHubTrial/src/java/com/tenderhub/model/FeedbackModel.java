package com.tenderhub.model;

public class FeedbackModel {

    public String fullname;
    public String emailid;
    public long mobileno;
    public String companyname;
    public String message;

    public FeedbackModel(String fullname, String emailid, long mobileno, String companyname, String message) {
        this.fullname = fullname;
        this.emailid = emailid;
        this.mobileno = mobileno;
        this.companyname = companyname;
        this.message = message;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public void setMobileno(long mobileno) {
        this.mobileno = mobileno;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getFullname() {
        return fullname;
    }

    public String getEmailid() {
        return emailid;
    }

    public long getMobileno() {
        return mobileno;
    }

    public String getCompanyname() {
        return companyname;
    }

    public String getMessage() {
        return message;
    }
    

    public FeedbackModel() {
    }

}
