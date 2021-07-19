<!DOCTYPE html>
<html>
<head>
  <title>Add Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link href="formmm.css" rel="stylesheet">
    <script src="js/respond.js"></script>
    <script src="neww.js"></script>
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <!--webfonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/custom.css" rel="stylesheet">
  <script src="js/respond.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="//code.jquery.com/jquery-3.1.1.slim.min.js"></script>
  <script type="text/javascript" src="marquee.js"></script>
</head>
<body background="#a5d7e9" style="
    margin-top: 100px;
    background-color: #a5d7e9;
">
<div>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html">HOME</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span>LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>
<div class="container" style="">

    <form class="well form-horizontal" action="uploadServlet" enctype="multipart/form-data" method="POST">
<fieldset style="
    margin-top: 100px;
">

<!-- Form Name -->
<legend>ADD NEW STOCK</legend>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Item ID</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="id" placeholder="Item ID" class="form-control" type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Item Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="name" placeholder="Item Name" class="form-control" type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Price</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="price" placeholder="Price" class="form-control" type="text">
    </div>
  </div>
</div>

<div class="form-group"> 
  <label class="col-md-4 control-label">Type</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="type" class="form-control selectpicker">
      <option value=" ">Please select type</option>
      <option>  Casual Shirts </option>
    <option>  Jeans </option>
    <option>  T-shirts  </option>
    <option>  Footwear </option>
    <option>  Shorts  </option>
    <option>  Watches </option>
    <option>  Dresses </option>
    <option>  Churidar Suits </option>
    <option>  Kurtas  </option>
    <option>  Sandals </option>
    <option>  Office Wear </option>
    <option>  Artificial Jewellery  </option> 
    <option>  Baby Apparel  </option>
    <option>  Girls Apparel  </option>
    <option>  Boys Apparel  </option>
    <option>  Kids Toys    </option>
    </select>
  </div>
</div>
</div>



<!-- Text input-->
      
<div class="form-group">
  <label class="col-md-4 control-label">Size</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="size" placeholder="Size" class="form-control" type="text">
    </div>
  </div>
</div>

<!-- Text input-->
 
<div class="form-group">
  <label class="col-md-4 control-label">Colour</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="colour" placeholder="Colour" class="form-control" type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Brand</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="brand" placeholder="Brand" class="form-control" type="text">
    </div>
</div>
</div>
<div class="form-group"> 
  <label class="col-md-4 control-label">Category</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
    <select name="category" class="form-control selectpicker">
      <option value=" ">Select Category</option>
      <option>  Men </option>
    <option>  Women </option>
    <option>  Kids </option>
   
    </select>
  </div>
</div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label">Stock </label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
  <input name="stock" placeholder="Stock" class="form-control" type="text">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Upload Photo</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
  <input name="file" class="form-control" type="file">
    </div>
  </div>
</div>


<!-- Success message 
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>-->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4" align="center">
    <button type="submit"  background-color="#21A957" name="upload" class="btn btn-warning" style="background-color: #21A957;">Upload <span class="glyphicon glyphicon-send"></span></button>
  </div>
</div>
  <div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4" align="center">

  </div>
</div>
  

</fieldset>
</form>
</div>

<style type="text/css"> .button { width: 150px; padding: 10px; background-color: #FF8C00; box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2); font-weight:bold; text-decoration:none; } #cover{ position:fixed; top:0; left:0; background:rgba(0,0,0,0.6); z-index:5; width:100%; height:100%; display:none; } #loginScreen { height:380px; width:340px; margin:0 auto; position:relative; z-index:10; display:none; background: url(login.png) no-repeat; border:5px solid #cccccc; border-radius:10px; } #loginScreen:target, #loginScreen:target + #cover{ display:block; opacity:2; } .cancel { display:block; position:absolute; top:3px; right:2px; background:rgb(245,245,245); color:black; height:30px; width:35px; font-size:30px; text-decoration:none; text-align:center; font-weight:bold; } </style>

</html>



     
</body>
</html>