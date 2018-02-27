<%-- 
    Document   : index
    Created on : Feb 27, 2018, 6:21:28 AM
    Author     : Ryan Curran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World</title>
        <link rel="stylesheet" type="text/css" href="siteStyle.css">
    </head>
    
    <body>
        <h1>Hello World!</h1>
        Today is: <%= new java.util.Date().toString() %> 
    </body>
</html>
