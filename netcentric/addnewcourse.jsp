<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String department=request.getParameter("department");
String course=request.getParameter("coursenew");


Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lectures","root","root@123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into course(course_name, category)values('"+course+"','"+department+"');");
response.sendRedirect("admin.jsp");


%>