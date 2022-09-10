<?php
$servername="localhost";
$username="root";
$password="2468";
$dbname="company_payroll_system";

try{
	$connection=new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
	//set the PDO error mode to exeption
	$connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
   }
   catch(PDOException $e)
   {
	   echo "Error:faild connection to Database";
   }
   
?>