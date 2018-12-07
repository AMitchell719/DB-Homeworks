<%-- 
    Document   : index
    Created on : Nov 2, 2018, 12:12:45 PM
    Author     : Aaron
--%>

<%@ page import = "java.sql.*" %>
<%@ page import = "java.io.*" %>
<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Management Report - JSP</title>
    </head>
    <body>
        <h1>Sales To Date - Management Report</h1>
        <p> <b>This report displays the Product ID, Product Name, Product Finish, and the Number of Products Ordered</b> </p>
        
        <%
            String url = "connection";
            // Establish Connection
            Connection conn = DriverManager.getConnection(url, "username", "password");
            
            Statement statement = conn.createStatement();
            
            // Need to grab OrderLine and Product ProductID's, description of products, Sum of orders, Need nested select
            ResultSet resultset = statement.executeQuery(  
			      "SELECT report.ProductID, report.ProductName, report.ProductFinish, SUM(report.OrderedQuantity)" +
            " FROM " + " (SELECT P.ProductID, P.ProductName, P.ProductFinish, O.OrderedQuantity FROM Product P, OrderLine O WHERE P.ProductID = O.ProductID) report " +
            " GROUP BY report.ProductID, report.ProductName, report.ProductFinish " + " ORDER BY report.ProductID ");

        %>
        
        <table border="1" bgcolor="white" width="50%" cellspacing="1" cellpadding="0" bordercolor="black" border="1">
            <tr>
                <th bgcolor="#DAA520"><font sieze="2"/>ProductID</th>
                <th bgcolor="#DAA520"><font sieze="2"/>ProductName</th>
                <th bgcolor="#DAA520"><font sieze="2"/>ProductFinish</th>
                <th bgcolor="#DAA520"><font sieze="2"/>NumberOfOrders</th>
            </tr>
            
            <% while (resultset.next()) {%>
            <tr>
                <td> <font sieze="2"/><center><%= resultset.getString(1)%> </center></td>
                <td> <font sieze="2"/><center><%= resultset.getString(2)%> </center></td>
                <td> <font sieze="2"/><center><%= resultset.getString(3)%> </center></td>
                <td> <font sieze="2"/><center><%= resultset.getString(4)%> </center></td>
            </tr>
            
            <% }%>
        </table>
        
        <p>This report generated using the latest Oracle SQL version</p>
        <p>This report &copy; copyright 2018</p>
                    
    </body>
</html>
