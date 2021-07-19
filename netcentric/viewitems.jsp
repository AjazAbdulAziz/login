
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 

String id = request.getParameter("id");
Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;
//String id ="123456";
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","thoppil1234");
stmt = con.createStatement();
rs = stmt.executeQuery("select photo from item where item_id='"+id+"';");
if(rs.next()) {
image = rs.getBlob(1);
imgData = image.getBytes(1,(int)image.length());

// display the image
response.setContentType("image/jpg");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
//out.print(id);
}
} catch (Exception e) {
out.println("Unable To Display image");
out.println("Image Display Error=" + e.getMessage());
return;
} finally {
try {
rs.close();
stmt.close();
con.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
%>