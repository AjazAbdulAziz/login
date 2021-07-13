<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/signin.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="images/logo.png"/>
<script type="text/javascript">
	$(document).ready(function(){

    //Check to see if the window is top if not then display button
    $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
            $('#top').fadeIn();
        } else {
            $('#top').fadeOut();
        }
    });

    //Click event to scroll to top
    $('#top').click(function(){
        $('html, body').animate({scrollTop : 0},800);
        return false;
    });

});
</script>

</head>
<style type="text/css">
	th{
		text-align: center;
	}
	td{
		text-align: center;
	}
</style>
<body>
<div class="container" id="#home">
<?php
include 'data.php';
if(isset($_GET['upload'])){
    $valuee=$_GET['name'];
    echo "<h2 style='text-align: center;'>".$valuee."</h2><br><br>";
    $sql="SELECT APPROVED FROM DRUG WHERE ID = (SELECT ID FROM DRUG WHERE NAME='$valuee');";
    $result=mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)>0){
        while($results = mysqli_fetch_array($result)){
            echo "<h3 style='text-align: center;'>".$results['APPROVED']."</h3>";
        }

    }else{
        echo "<script type='text/javascript'>alert('Enter Valid Drug Name..')</script>";
        echo "<script type='text/javascript'>window.location.href = 'index.php';</script>";
    }?>
      	<?php
    $sql2="SELECT * FROM DRUG_CLASS WHERE ID = (SELECT ID FROM DRUG WHERE NAME='$valuee');";
    $result=mysqli_query($conn,$sql2);
    if(mysqli_num_rows($result)>0){
    	echo "<h3 style='text-align: center;'>Drug Class</h3>
    <table class='table table-bordered'>
    <thead>
      <tr>
      	<th>Drug Id</th>
        <th>Direct Parent</th>
        <th>Kingdom</th>
        <th>Super Class</th>
        <th>Class</th>
        <th>Sub Class</th>
      </tr>
    </thead>
    <tbody>";
        while($results = mysqli_fetch_array($result)){
            echo "<tr><td>".$results['id']."</td><td>".$results['directparent']."</td><td>".$results['kingdom']."</td><td>".$results['superclass']."</td><td>".$results['class']."</td><td>".$results['subclass']."</td></tr>";
        }
        echo "
    </tbody>
  </table>";
    }
    ?>
      	<?php
    $sql3="SELECT * FROM DRUG_TARGET WHERE ID = (SELECT ID FROM DRUG WHERE NAME='$valuee');";
    $result=mysqli_query($conn,$sql3);
    if(mysqli_num_rows($result)>0){
    	echo "<br><br>
  <h3 style='text-align: center;'>Drug Target</h3>
      <table class='table table-bordered'>
    <thead>
      <tr>
      	<th>Drug Bank ID</th>
        <th>Organism</th>
        <th>Name</th>
        <th>Position</th>
      </tr>
    </thead>
    <tbody>";
        while($results = mysqli_fetch_array($result)){
            echo "<tr><td>".$results['drugbank_id']."</td><td>".$results['organism']."</td><td>".$results['name']."</td><td>".$results['position']."</td></tr>";
        }
        echo "
    </tbody>
  </table>";

    }
    ?>
      	<?php
    $sql3="SELECT * FROM DRUG_INTERACTIONS WHERE ID = (SELECT ID FROM DRUG WHERE NAME='$valuee');";
    $result=mysqli_query($conn,$sql3);
    if(mysqli_num_rows($result)>0){
    	echo "<br><br>
  <h3 style='text-align: center;'>Drug Interaction</h3>
      <table class='table table-bordered'><thead>
      <tr>
      	<th>Name</th>
        <th>Description</th>
        <th>ID</th>
        <th>DrugBank_ID</th>
      </tr>
    </thead>
    <tbody>";
        while($results = mysqli_fetch_array($result)){
            echo "<tr><td>".$results['name']."</td><td>".$results['description']."</td><td>".$results['id']."</td><td>".$results['drugbank_id']."</td></tr>";
        }
        echo "
    </tbody>
  </table>";

    }
    ?>
    <div class="container" align="center">
    <?php
    $sql1="SELECT DESCRIPTION FROM DRUG_INTERACTIONS WHERE ID = (SELECT ID FROM DRUG WHERE NAME='$valuee');";
    $result=mysqli_query($conn,$sql1);
    if(mysqli_num_rows($result)>0){
    	echo "<h3 style='text-align:center;'>Description</h3><button type='button'  class='btn btn-info' data-toggle='collapse' data-target='#ptag'>Read Discription</button><br><br><div id='ptag' style='text-align:justify;' class='collapse'>";
        while($results = mysqli_fetch_array($result)){
            echo $results['DESCRIPTION']." ";
        }
        echo "</div><br>";
    }
    ?>
    <button type='button' id="top" class='btn btn-success'>Top <span class="glyphicon glyphicon-arrow-up"></span></button>
    <a href="index.php"><button type='button'  class='btn btn-danger'>Go Back <span class="glyphicon glyphicon-arrow-left"></button></a>

    </div>

  
    <?php
    }else{
        echo "<script type='text/javascript'>alert('Enter Valid Drug Name..')</script>";
    }

?>
</div>
</body>
</html>