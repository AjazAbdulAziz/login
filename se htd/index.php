
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/signin.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="images/logo.png"/>

  <title>Drug Lab</title>
</head>
<body style="background-image: url(images/i.jpg); background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">

  <div class="container">
  <div class="jumbotron">
    <h1>Drug Lab</h1>
  </div>
</div>
<div class="wrapper">
    <form class="form-signin" action="search.php" method="GET">
      <h2 class="form-signin-heading" style="text-align: center;">Drug search</h2>
      <input type="text" class="form-control" name="name" placeholder="name" required="" autofocus="" /><br>
      <button class="btn btn-lg btn-primary btn-block" name="upload" type="submit">Search</button>
    </form>
  </div>
</body>
</html>

