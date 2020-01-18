<%-- 
    Document   : signup
    Created on : 15 Jun, 2015, 9:51:47 PM
    Author     : Chintan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>

    </head>
    <body>        

        <!-- Classic Heading -->
        <h4><span>Sign Up</span></h4>

        <!-- Start Signup Form -->
        <form role="form" id="signup-form" method="post" action="Controller?action=signupsubmit">
            <input type="text" placeholder="First Name" name="fname">
            <input type="text" placeholder="Last Name" name="lname">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                <input  name="email" type="email" class="form-control" placeholder="Email">
            </div>
            <input type="text"  placeholder="Mobile No" name="mobileno">
            <input type="text"  placeholder="Website Address" name="websiteaddress">
            <!--<input type="text"  placeholder="User Name" name="MobileNo">-->
            <input type="password"  placeholder="Password" name="pass">
            <input type="password"  placeholder="Confirm Password" name="confpass">

            <!--<textarea rows="7" placeholder="Message" name="message"></textarea>-->
            <button type="submit" id="submit">Sign Up</button>

        </form>
        <!-- End Signup Form -->
</body>
</html>
