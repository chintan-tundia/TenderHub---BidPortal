/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tenderhub.controller.action;

import com.tenderhub.controller.Action;
import com.tenderhub.dao.TenderHubDAOImpl;
import com.tenderhub.model.ContactUsModel;
import com.tenderhub.model.SignUpModel;
import com.tenderhub.util.Encryptor;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Chintan
 */
public class ActionSignUpInsert implements Action {

    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";

        try {
            String fname,lname, email,webadd,pass;
            long mobileno;

            fname = req.getParameter("fname");
            lname = req.getParameter("lname");
            email=req.getParameter("email");
            mobileno = Long.parseLong(req.getParameter("mobileno"));
            webadd = req.getParameter("websiteaddress");
            pass = req.getParameter("pass");
			
			pass=Encryptor.encrypt(pass);
			
            SignUpModel sum = new SignUpModel(fname,lname,email,mobileno,webadd,pass);
            TenderHubDAOImpl tenderhubdb=new TenderHubDAOImpl();
            tenderhubdb.insertSignUp(sum);
            
        } catch (Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            System.err.println(e.getMessage());
            String msg=e.getMessage();
            return "error.jsp?err="+msg;
        }

        return view;

    }
}
