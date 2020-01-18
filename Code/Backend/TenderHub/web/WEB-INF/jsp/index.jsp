<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <!-- Classic Heading -->
        <h4><span>Contact Us</span></h4>

        <!-- Start Contact Form -->
        <form  id="contact-form" action="ContactFormAction" method="post">
            <input type="text" placeholder="Name" name="name">
            <br>
            <input type="email" placeholder="Email" name="email">
            <br>
            <select name="purpose">
                <option value="Inquiry">Inquiry</option>
                <option value="Feedback">Feedback</option>
                <option value="Other">Other</option>                
            </select>
            
            <br>
            <input type="text"  placeholder="Subject" name="subject">
            <br>
            <textarea rows="7" placeholder="Message" name="message"></textarea>
            <br>
            <button type="submit" id="submit" >Send</button>
        </form>
        <!-- End Contact Form -->

    </body>
</html>
