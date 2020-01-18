/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tenderhub.controller.action;

import com.tenderhub.controller.Action;
import com.tenderhub.dao.TenderHubDAOImpl;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tenderhub.model.ContactUsModel;
/**
 *
 * @author Chintan
 */
public class ActionContactUsInsert implements Action {

    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";

        try {
            String name, email, purpose, subject, message;

            name = req.getParameter("name");
            email = req.getParameter("email");
            purpose = req.getParameter("purpose");
            subject = req.getParameter("subject");
            message = req.getParameter("message");
            
            ContactUsModel cum = new ContactUsModel(name,email,purpose, subject, message);
            TenderHubDAOImpl tenderhubdb=new TenderHubDAOImpl();
            tenderhubdb.insertContact(cum);
            
        } catch (Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            return "error.jsp?err="+e.getMessage();
        }

        return view;

    }
}
