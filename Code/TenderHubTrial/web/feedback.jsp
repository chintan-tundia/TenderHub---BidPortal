<%-- 
    Document   : feedback
    Created on : 1 Jul, 2015, 12:09:10 PM
    Author     : Chintan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Start Feedback Form -->
        <form role="form" id="feedback-form" method="post" action="Controller?action=feedbacksubmit">
            <input type="text" placeholder="Full Name" name="fullname">            
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                <input  name="email" type="email" class="form-control" placeholder="Email">
            </div>
            <input type="text"  placeholder="Mobile No" name="mobileno">
            <input type="text"  placeholder="Company Name" name="company">                                    

            <textarea rows="7" placeholder="Message" name="message"></textarea>
            <button type="submit" id="submit">Submit</button>

        </form>
        <!-- End Feedback Form -->
    </body>
</html>
