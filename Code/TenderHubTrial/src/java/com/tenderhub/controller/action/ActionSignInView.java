/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tenderhub.controller.action;

import com.tenderhub.controller.Action;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chintan
 */
public class ActionSignInView implements Action {
    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "signin.jsp";
        
        try {
            
        }
        catch(Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            return "error.jsp?err="+e.getMessage();
        }

        return view;

    }
}
