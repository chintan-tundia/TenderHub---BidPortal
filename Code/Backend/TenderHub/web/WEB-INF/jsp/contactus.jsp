<%-- 
    Document   : contactus
    Created on : 15 Jun, 2015, 9:51:47 PM
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

            <!-- Classic Heading -->
            <h4><span>Contact Us</span></h4>

            <!-- Start Contact Form -->
            <form role="form" id="contact-form" method="post">
                        <input type="text" placeholder="Name" name="name">

                        <input type="email" placeholder="Email" name="email">
                        <input type="text"  placeholder="Subject" name="subject">

                        <textarea rows="7" placeholder="Message" name="message"></textarea>
                <button type="submit" id="submit">Send</button>
                
            </form>
            <!-- End Contact Form -->

        </div>
        <h1>Hello World!</h1>
    </body>
</html>
