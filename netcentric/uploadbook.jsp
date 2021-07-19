<!DOCTYPE html>
<html>
<head>
  <title>Add Books</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <meta charset="utf-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    <link href="formmm.css" rel="stylesheet">
    <script src="js/respond.js"></script>
    <script src="neww.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript">
      function run(sel){
    var countryId = sel.selectedIndex;
    $.ajax({
        type: "POST",
        url: "get-category.php",
        data: {country : sel.options[countryId].text },
        success: function (data) {
                    //remove disabled from province and change the options
                    $('#course').find('option').remove().end();
                    $('#course').append("<option> Select Course</option>");
                    data = data.split(",");
                    for(var i=0;i<data.length-1;i++){
                      $('#course').append("<option>"+data[i]+"</option>");
                    }
                    
        }
    
});
  }
    </script>
</head>
<body background="#21A957" style="
    margin-top: 100px;
    background-color: #f4511e;
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

    <form class="well form-horizontal" action="#" method="POST" enctype="multipart/form-data">
<fieldset style="
    margin-top: 100px;
">

  <div class="form-group"> 
  <label class="col-md-4 control-label">Select Department</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="category" class="form-control selectpicker" id="category" onchange="run(this)">
      <option value=" ">Select Department</option>
      <option>  Computer Science </option>
    <option>  Mechanical </option>
    <option>  Electrical </option>
    <option>  Elecronics </option>
    <option>  Civil  </option>
    </select>
  </div>
</div>
</div>
<div class="form-group"> 
  <label class="col-md-4 control-label">Select Course</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="course" class="form-control selectpicker" id="course">
      <option value=" ">Select Course</option>
    </select>
  </div>
</div>
</div>

  <div class="form-group">
  <label class="col-md-4 control-label">Upload PDF</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
  <input name="file" class="form-control" type="file">
    </div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4" align="center">
    <button type="submit"  background-color="#21A957" name="upload" class="btn btn-warning" style="background-color: #21A957;">Upload <span class="glyphicon glyphicon-send"></span></button>
  </div>
  

</fieldset>


</form>
</div>
<style type="text/css"> .button { width: 150px; padding: 10px; background-color: #FF8C00; box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2); font-weight:bold; text-decoration:none; } #cover{ position:fixed; top:0; left:0; background:rgba(0,0,0,0.6); z-index:5; width:100%; height:100%; display:none; } #loginScreen { height:380px; width:340px; margin:0 auto; position:relative; z-index:10; display:none; background: url(login.png) no-repeat; border:5px solid #cccccc; border-radius:10px; } #loginScreen:target, #loginScreen:target + #cover{ display:block; opacity:2; } .cancel { display:block; position:absolute; top:3px; right:2px; background:rgb(245,245,245); color:black; height:30px; width:35px; font-size:30px; text-decoration:none; text-align:center; font-weight:bold; } </style>

</html>



     
</body>
</html>