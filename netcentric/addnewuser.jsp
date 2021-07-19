<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lectures","root","root@123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(username,password)values('"+user+"','"+pass+"');");
response.sendRedirect("admin.jsp");


%>