<?php

try {
	require_once("../Private/connection.php");
	
	//prepare sql and bind parameters
	//statements by using references
	$stmt=$connection->prepare("INSERT INTO employee (name, id, address, rank, hoursworked, overtimehours, payment)
	VALUES(:name, :id, :address, :rank, :hoursworked, :overtimehours, :payment)");
	
	$stmt->bindparam(':name',$_POST['emName']);
	$stmt->bindparam(':id',$_POST['emId']);
	$stmt->bindparam(':address',$_POST['emaddress']);
	$stmt->bindparam(':rank',$_POST['emrank']);
	$stmt->bindparam(':hoursworked',$_POST['emhoursworked']);
	$stmt->bindparam(':overtimehours',$_POST['emovertimehours']);
	$stmt->bindparam(':payment',$_POST['empayment']);
	
	$stmt->execute();
	
	echo ("<h1> Registeration has been done, Thanks A lot</h1>");
	
	}
	
	catch(PDOException $e)
	{
		echo "Error: " . $e->getMessage();
	}
	
	$connection=null;
?>
	