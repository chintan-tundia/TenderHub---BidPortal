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
public class ActionIndex implements Action{
    public String execute(HttpServletRequest req, HttpServletResponse res) {

        String view = "index.jsp";
        
        try {
            //BookDAO book_db = new BookDAOImpl();
            //ArrayList<Book> stock = book_db.getAll();
            //req.setAttribute("stock", stock);
        }
        catch(Exception e) {
            //req.setAttribute("error", e.toString() + ";[ShowCat.java]");
            return "error.jsp";
        }

        return view;

    }
}
