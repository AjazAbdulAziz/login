
<html>
<div><br/><center><h2><font face="Lucida Handwriting" size="+1" color="#00CCFF">Login your Account</font></h2></center></div>
<div>
<div style="width:25%;float:right">
<img src="usepics/7.jpg">
</div>

<br><br>
<div style="width:70%;float:right" align="center" >
<center><fieldset style="background:#CC99CC;width:50%">
<br><br>
<table width="244" border="0" align="center">
<form method="post">
<tr><td colspan="2"></td></tr>
  <tr>
    <td width="90"><div align="center"><font size="+1" face="Comic Sans MS">UserID:</font></div></td>
    <td width="144"><label>
      <input name="t1" type="text" id="t1">
    </label></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS">Password:</font></div></td>
    <td><input name="p1" type="password" id="p1"></td>
  </tr>
  <tr>
    <td><label>
      <div align="center">
<input name="sub" type="submit" value="Login">
        </div>
    </label></td>
    <td><strong><a href="register.jsp"><font color="#993333" size="+1" face="Bradley Hand ITC">Sign Up</font></a></strong><br><a href="index.html"><input type="button" name="back" value="Go Back"></a> </td>
  </tr>
  <tr>
    <td height="37" colspan="2"><div align="center"><a href="#"><font size="+1" face="Bradley Hand ITC"><strong>Forgot your Password? </strong></font></a></div></td>
    </tr>
    <tr>
    <td colspan="2"><label><br>
    <center>
      <%@ page import="java.sql.*"%>
<%@ page import="com.mysql.jdbc.Driver" %>

<%
  if(request.getParameter("t1")!= null){
  String db = request.getParameter("db");
  String user = db; // assumes database name is the same as username
   String uname = request.getParameter("t1");
  String pword = request.getParameter("p1");
  //out.println(uname+" "+pword);
  
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
    Statement sqlStatement = con.createStatement();
    String query = "SELECT password FROM users where user_id = '"+uname+"';";
    //out.println(query);
    ResultSet sqlResult = sqlStatement.executeQuery(query);
    while(sqlResult.next()) {
    String ppp = sqlResult.getString("password");
    if(pword.equals(ppp)){
        session.setAttribute( "username", uname );
        response.sendRedirect("index.html");
    }else{
        out.print(pword+" "+ppp);
        out.print("Enter Valid User ID and Password");
    }
}
}
%>
    </center>
    </label></td>
    </tr>
  </form>
</table>
</fieldset></center>
</div>

</div>

<!--<div style="width:100%;float:left"><center><b>Copyright&copy;Priya Gupta</b></center></div>
</div>-->

</body>
</html>