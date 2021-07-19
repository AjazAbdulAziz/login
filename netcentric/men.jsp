<%-- 
    Document   : viewcart
    Created on : 14 Nov, 2018, 12:42:00 AM
    Author     : Ajaz Abdul Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
    </head>
    <body>
        <table
            <tr>
                <%
                    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","thoppil1234");
    Statement sqlStatement = con.createStatement();
    String query = "SELECT item_id FROM item where category='Men';";
    //out.println(query);
    ResultSet sqlResult = sqlStatement.executeQuery(query);
    int i=0;
    while(sqlResult.next()) {
        String ppp = sqlResult.getString(1);
        //session.setAttribute("item",ppp);
        //out.print(ppp);
        if(i==0){
            out.print("<tr>");
        }
        out.print("<td><img src='viewitems.jsp?");
        out.print("id="+ppp);
        out.print("' width='250px' height='250px'></td>");
        //out.print(session.getAttribute("item"));
        if(i==4){
            out.print("/<tr>");
            i=0;
        }
        i=i+1;//out.print(session.getAttribute("item"));
    }
                %> 
            </tr> 
        </table>
    </body>
</html>
