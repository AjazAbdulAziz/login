
<html>
<head>
<script>

function fnam()
{
  var fnam=/^[a-zA-Z]{4,20}$/;
   if(document.f1.t1.value.search(fnam)==-1)
    {
	 alert("enter correct  first name");
	 document.f1.t1.focus();
	 return false;
	 }
	} 
	 
function email()
{
 var email=/^[a-zA-Z0-9-_\.]+@[a-zA-Z]+\.[a-zA-Z]{2,3}$/;
   if(document.f1.t3.value.search(email)==-1)
    {
	 alert("enter correct email");
	 document.f1.t3.focus();
	 return false;
	 }
	} 
	
	function pass()
	{
	var pass=/^[a-zA-Z0-9-_]{6,16}$/;
   if(document.f1.p1.value.search(pass)==-1)
    {
	 alert("enter correct pass");
	 document.f1.p1.focus();
	 return false;
	 }
	 }
	
	function add()
	{
	var add=/^[a-zA-Z0-9- ]{10,150}$/;
  if(document.f1.t6.value.search(add)==-1)
    {
	 alert("enter correct address");
	 document.f1.t6.focus();
	 return false;
	 }
	 }
/*
function vali()
{
  var nam=/^[a-zA-Z]{4,15}$/;
   var email=/^[a-zA-Z0-9-_\.]+@[a-zA-Z]+\.[a-zA-Z]{2,3}$/;
    var pass=/^[a-zA-Z0-9-_]{6,16}$/;
	  var add=/^[a-zA-Z0-9 ]{10,150}$/;
	  
   if(document.f1.t1.value.search(nam)==-1)
    {
	 alert("enter correct name");
	 document.f1.t1.focus();
	 return false;
	 }
 
  else if(document.f1.t3.value.search(email)==-1)
    {
	 alert("enter correct login name");
	 document.f1.t3.focus();
	 return false;
	 }
	 
   else if(document.f1.p1.value.search(pass)==-1)
    {
	 alert("enter correct pass");
	 document.f1.p1.focus();
	 return false;
	 }
	 
	
  else if(document.f1.t6.value.search(add)==-1)
    {
	 alert("enter correct address");
	 document.f1.t6.focus();
	 return false;
	 }
	 
	 else 
	{
	 return true;
	 }
	 } 
	 */
</script> 
</head>
<body>


<div><br/><center><h2><font face="Lucida Handwriting" size="+1" color="#00CCFF">Register Yourself</font></h2></center></div>
<div>
<div style="width:25%;float:right">
<br><br><br><br><br>
<img src="usepics/7.jpg">
</div>
<br><br>
<center><div style="width:70%;float:right" align="center">
<fieldset style="background:#CC99CC;width:50%">
<br><br>
<form method="post" name="f1" onSubmit="return vali()">
<table width="366" border="0" align="center">
  <tr>
    <td width="164"><div align="center"><font size="+1" face="Comic Sans MS"><b> &nbsp;Name:</b></font></div></td>
    <td width="192">
      
        <input name="t1" type="text" id="t1" onChange="return fnam()">    </td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><b>&nbsp;Email : </b></font></div></td>
    <td><input name="t3" type="text" id="t3" onChange="return email()"></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><b>&nbsp;Password:</b> </font></div></td>
    <td><input name="p1" type="password" id="p1" onChange="return pass()"></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Address:</strong></font></div></td>
    <td><label>
      <textarea name="t6" id="t6" value="return add()"></textarea>
    </label></td>
  </tr>
  <tr>
    <td colspan="2"><label><br>
    <center>
      <input name="sub" type="submit" id="sub" value="Create my Account">
      <a href="index.html"><input type="button" name="back" value="Go Back"></a>
    </center>
    </label></td>
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
  String name = request.getParameter("t1");
  String email = request.getParameter("t3");
  String pword = request.getParameter("p1");
  String address = request.getParameter("t6");
  //out.println(uname+" "+pword);
  
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
	Statement st=conn.createStatement();
    String query = "insert into users (user_id,name,email,address,password) values('"+email+"','"+name+"','"+email+"','"+address+"','"+pword+"')";
    //out.println(query);
    int i = st.executeUpdate(query);
    out.print("Successfully Registered");
}
%>
    </center>
    </label></td>
    </tr>
 
</table>
 </form>
</fieldset>
</div>
</center>

</div>

</body>
</html>