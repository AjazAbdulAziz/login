
<?php
	session_start();
	include 'data.php';


	$user = $_POST['user'];
	$pass = $_POST['pass'];

	$sql = "select pword from login where uname='$user'";
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();
	if($row['pword']===$pass){
		header("Location: loghome.html");
	}
	else{
			header("Location: login.html?x=1");
		}

?>