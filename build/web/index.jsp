<%-- 
    Document   : index
    Created on : Feb 27, 2018, 6:21:28 AM
    Author     : Ryan Curran
--%>

<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ryan's Index</title>
        <link rel="stylesheet" type="text/css" href="siteStyle.css">
    </head>
    
    <body>
        <h1>Salary Calculator </h1>
        
        <div>
            <form name="Salary Calculator" action="results.jsp" method="post" >
                  
                  <table>
                      
                      <tbody>
                          
                          <tr>
                              <td> # of Hours</td>
                              <td><input type="text" name="hours" value="" size="auto"></td>
                          <tr>
                              <td> Hourly Wage</td>
                              <td><input type="text" name="wage" value="" size="auto"></td>
                          <tr>
                              <td>Pre Tax Deduction</td>
                              <td><input type="text" name="preDeduction" value="" size="auto"></td>
                          <tr>
                              <td>Post Tax Deduction</td>
                              <td><input type="text" name="postDeduction" value="" size="auto"></td>
                       
                          
                      </tbody>
                </table>
                
                <input type="submit" value="Submit" id="submit">
                <input type="reset" value="Clear" id="clear">
                

            </form>

        </div>
    </body>
</html>
