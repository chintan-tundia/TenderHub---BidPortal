/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tenderhub.controller.action;

import com.tenderhub.controller.Action;
import com.tenderhub.dao.TenderHubDAOImpl;
import com.tenderhub.model.SignInModel;
import com.tenderhub.util.Encryptor;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chintan
 */
public class ActionSignIn implements Action {

    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";

        try {
            String email, pass;
            //int mobileno;

            email = req.getParameter("email");
            pass = req.getParameter("pass");
            pass=Encryptor.encrypt(pass);
            SignInModel sim = new SignInModel(email, pass);
            TenderHubDAOImpl tenderhubdb = new TenderHubDAOImpl();
            sim=tenderhubdb.SignInValidate(sim);
            if (sim != null)
            {
                req.getSession().setAttribute("userid",sim.getId());
                req.getSession().setAttribute("name",sim.getName());
                view = "index.jsp";
            } else {
                req.getSession().setAttribute("userid", null);
                //view = "index.jsp";
                view = "login_failure.jsp";
            }

        } catch (Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            System.err.println(e.getMessage());
            return "error.jsp?err=" + e.getMessage();
        }

        return view;

    }
}
