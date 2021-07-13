<?php

	return $conn = mysqli_connect('localhost','root','','drugbank');

	if(!$conn){
		die("Conection Failed: ". mysql_connect_error());
	}
?>