/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tenderhub.controller.action;

import com.tenderhub.model.SignUpModel;
import com.tenderhub.controller.Action;
import com.tenderhub.dao.TenderHubDAOImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tenderhub.util.Encryptor;
/**
 *
 * @author Chintan
 */
public class ActionForgotPasswordSubmit implements Action {

    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";

        try {
            String email;
            //int mobileno;

            email=req.getParameter("email");
            
            TenderHubDAOImpl tenderhubdb=new TenderHubDAOImpl();
            tenderhubdb.sendForgotPasswordRecoveryMail(email);
            
        } catch (Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            System.err.println(e.getMessage());
            return "error.jsp?err="+e.getMessage();
        }

        return view;

    }
}
