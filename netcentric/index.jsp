<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Let's Learn</title>
<link rel="stylesheet" type="text/css" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="form-wrapper">
  
  <form onclick="submit" method="POST" action="test.jsp">
    <h3>Let's Learn</h3>
    
    <div class="form-item">
        <input type="text" name="user" required="required" placeholder="Username" autofocus required></input>
        
    </div>
    
    <div class="form-item">
        <input type="password" name="pass" required="required" placeholder="Password" required></input>
        
    </div>
    
    <div class="button-panel">
        <input type="submit" class="button" title="Log In" name="login" value="Login"></input>
    </div>

  </form>
  
  
</div>


</body>
</html>