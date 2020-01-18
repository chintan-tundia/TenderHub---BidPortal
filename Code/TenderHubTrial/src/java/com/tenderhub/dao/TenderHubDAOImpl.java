package com.tenderhub.dao;

import com.tenderhub.model.ContactUsModel;
import com.tenderhub.model.FeedbackModel;
import com.tenderhub.model.SignInModel;
import com.tenderhub.model.SignUpModel;
import com.tenderhub.util.Encryptor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;

public class TenderHubDAOImpl implements TenderHubDAO {

    private PreparedStatement pst;
    private final Connection con;

    @Override
    public boolean insertContact(ContactUsModel model) throws SQLException {
        boolean flag = true;

        String sql = "Insert into Contact Values(NULL,?,?,?,?,?);";
        pst = con.prepareStatement(sql);
        pst.setString(1, model.name);
        pst.setString(2, model.email);
        pst.setString(3, model.purpose);
        pst.setString(4, model.subject);
        pst.setString(5, model.message);

        if (pst.executeUpdate() == 0) {
            System.out.println("inserted");
        } else {
            System.out.println("not inserted");
            flag = false;
        }
        return flag;
    }

    public boolean insertSignUp(SignUpModel model) throws SQLException {
        boolean flag = true;

        String sql = "Insert into User(UserId,Fname,Lname,Email,MobileNo,WebsiteAddress,Pass) Values(NULL,?,?,?,?,?,?);";
        pst = con.prepareStatement(sql);
        pst.setString(1, model.fname);
        pst.setString(2, model.lname);
        pst.setString(3, model.email);
        pst.setLong(4, model.mobileno);
        pst.setString(5, model.websiteaddress);
        pst.setString(6, model.pass);

        if (pst.executeUpdate() == 0) {
            System.out.println("inserted");
        } else {
            flag = false;
            System.out.println("not inserted");
        }
        return flag;
    }

    public TenderHubDAOImpl() throws ClassNotFoundException, SQLException {
        con = DBConnection.getInstance().getConnection();
    }
    

    public boolean insertFeedback(FeedbackModel model) throws SQLException {
        boolean flag = true;
        String sql = "Insert into Feedback Values(NULL,?,?,?,?,?);";
        pst = con.prepareStatement(sql);
        pst.setString(1, model.fullname);
        pst.setString(2, model.emailid);
        pst.setString(3, model.companyname);
        pst.setLong(4, model.mobileno);
        pst.setString(5, model.message);

        if (pst.executeUpdate() == 0) {
            System.out.println("inserted");
        } else {
            flag = false;
            System.out.println("not inserted");
        }
        return flag;
    }

    public SignInModel SignInValidate(SignInModel model) throws SQLException 
    {
        String sql = "SELECT * from User where Email=? AND Pass=?";
        pst = con.prepareStatement(sql);
        pst.setString(1, model.email);
        pst.setString(2, model.pass);
        ResultSet rs=pst.executeQuery();
        if(rs.next())
        {
            model.setName(rs.getString("Fname"));
            model.setId(rs.getInt("UserId"));
            return model;
        }
        return null;
    }
    public void sendForgotPasswordRecoveryMail(String email) throws SQLException, Exception {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        Random randomGenerator = new Random();
        int randomInt = randomGenerator.nextInt(100000);
        String pass=String.valueOf(randomInt),encryptedpass;
        // password encryption logic will remain here
        encryptedpass=Encryptor.encrypt(pass);
        String sql="UPDATE user SET Pass=? where Email=?";
        pst = con.prepareStatement(sql);
        pst.setString(1, encryptedpass);
        pst.setString(2, email);
        
        if(pst.executeUpdate() == 1)
        {
            System.out.println("Updated the password :"+pass);
        }
        //return null;
    }
}
