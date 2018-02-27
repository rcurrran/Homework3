<%-- 
    Document   : results
    Created on : Feb 27, 2018, 8:36:37 AM
    Author     : Ryan Curran
--%>

<%@ page language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
        <link rel="stylesheet" type="text/css" href="siteStyle.css">
    </head>
    
    <%
        String HoursWorked = request.getParameter("hours");
            double HWorked = Double.parseDouble(HoursWorked);
        String HourlySalary = request.getParameter("wage");
            double HWage = Double.parseDouble(HourlySalary);
        String PreDeduction = request.getParameter("preDeduction");
            double PreD = Double.parseDouble(PreDeduction);
        String PostDeduction = request.getParameter("postDeduction");
            double postD = Double.parseDouble(PostDeduction);
                
    %>

    <body>
        <h1>Results</h1>
        <div>
            <form name="Salary Results" action="index.jsp" method="get" >
                  
                  <table>
                      
                      <tbody>
                          
                          <tr>
                              <td> # of Hours</td>
                              <td> <%= HWorked %> </td>
                          <tr>
                              <td> Hourly Wage</td>
                              <td> <%= HWage %> </td>
                          <tr>
                              <td># of Hours:OT </td>
                              <td> <% double overtime=0;
                                    if(HWorked>40) { overtime=HWorked-40;
                                                    out.println(overtime);  }
                                    else out.println(overtime);
                                    %> </td>   
 
                          <tr>
                              <td>Hourly Wage:OT </td>
                                   
                              <td> <% double overtimerate=HWage;
                                      if (overtime>0) { overtimerate+=HWage*.5;
                                      }
                                      else overtimerate=0;
                                      out.println(overtimerate);
                                      %></td>

                          <tr>
                              <td>Gross Pay</td>
                              <td> <% double grosspay=((HWorked-overtime)*HWage)+(overtime*overtimerate);
                                        out.println(grosspay);
                                    %></td>
                              
                          <tr>
                              <td>Pre Tax Deduction</td>
                              <td><%=PreD 
                                      %></td>
                          <tr>
                              <td>Pre Tax Pay</td>
                              <td><%=grosspay-PreD
                              %></td>
                          <tr>
                              <td>Tax Amount</td>
                              <td><% double taxrate=0;
                                        if (grosspay<500) {taxrate=.18;}
                                        else if (grosspay>500) {taxrate=.22;}
                                        double Taxes=(grosspay-PreD)*taxrate;
                                        out.println(Taxes);
                                        
                              %></td>
                              
                          <tr>
                              <td>Post Tax Pay</td>
                              <td><% double posttaxpay=grosspay-Taxes;
                                    out.println(posttaxpay);
                              %></td>
                                      
                          <tr>
                              <td>Post Tax Deduction</td>
                              <td><%=postD 
                              %></td>
                          <tr>
                              <td>Net Pay</td>
                              <td> <% double netpay= posttaxpay-postD; 
                                        out.println(netpay);%></td>
                       
                          
                      </tbody>
                </table>
                
                
                

            </form>

        </div>
        
    </body>
</html>
