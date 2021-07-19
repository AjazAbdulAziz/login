<%@ page import="java.sql.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
  String db = request.getParameter("db");
  String user = db; // assumes database name is the same as username
  String uname = request.getParameter("user");
  String pword = request.getParameter("pass");
  //out.println(uname+" "+pword);
  
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
    Statement sqlStatement = con.createStatement();
    String query = "SELECT password FROM users where username = '"+uname+"';";
    //out.println(query);
    ResultSet sqlResult = sqlStatement.executeQuery(query);
    while(sqlResult.next()) {
    String pass = "admin";
    String ppp = sqlResult.getString("password");
    if(pword.equals(pass)){
        response.sendRedirect("admin.jsp");
    }else if(pword.equals(ppp)){
        response.sendRedirect("user.jsp");
    }
}
response.sendRedirect("index.jsp");
%>