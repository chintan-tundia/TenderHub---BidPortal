<%-- 
    Document   : signin
    Created on : 1 Jul, 2015, 11:52:33 AM
    Author     : Pratik Chaudhari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form class="form col-md-12 center-block" method="post" action="Controller?action=signinsubmit">
            <div class="form-group">
              <input name="email" type="text" class="form-control input-lg" placeholder="Email">
            </div>
            <div class="form-group">
              <input name="pass" type="password" class="form-control input-lg" placeholder="Password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
              <span class="pull-right"><a href="Controller?action=signup">Register</a></span><span><a href="#">Need help?</a></span>
            </div>
          </form>
    </body>
</html>
