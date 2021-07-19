<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
  String db = "login";
  String user = "root"; 
  try {
    java.sql.Connection con;
    Class.forName("org.gjt.mm.mysql.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/"+db,user, "");
    out.println (db+ "database successfully opened.");
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }     catch (ClassNotFoundException ex) {
            out.println("LOSER!");
            //Logger.getLogger(NetCentricProject.class.getName()).log(Level.SEVERE, null, ex);
        }
%>

</body>
</html>
