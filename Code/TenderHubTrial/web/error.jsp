<%-- 
    Document   : error
    Created on : 24 Jun, 2015, 8:01:38 PM
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
        <h1>Error</h1>
        <h2> Stack Trace:-</h2>
        <h3><% request.getParameter("err"); %></h3>
    </body>
</html>
