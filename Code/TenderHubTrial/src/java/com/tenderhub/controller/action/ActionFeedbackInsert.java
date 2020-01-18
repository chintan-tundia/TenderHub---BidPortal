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
import com.tenderhub.model.FeedbackModel;
/**
 *
 * @author Chintan
 */
public class ActionFeedbackInsert implements Action {

    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";

        try {
            String name, email, company, message;
            int mobileno;
            
            name = req.getParameter("fullname");
            email = req.getParameter("email");
            mobileno = Integer.parseInt(req.getParameter("mobileno"));
            company = req.getParameter("company");
            message = req.getParameter("message");
            
            FeedbackModel fbm = new FeedbackModel(name,email,mobileno, company, message);
            TenderHubDAOImpl tenderhubdb=new TenderHubDAOImpl();
            tenderhubdb.insertFeedback(fbm);
            
            
        } catch (Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            return "error.jsp?err="+e.getMessage();
        }

        return view;

    }
}
