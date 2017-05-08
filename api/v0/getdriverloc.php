<?php

$drivername = $_REQUEST["ridername"];




$mysqli = new mysqli("localhost", "hopin_admin", "temporarypassword", "hopin");

if($mysqli->connect_errno){

  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}



 
	$query = "SELECT * from users WHERE username='$drivername'";
	$result=$mysqli->query($query);
	//$idarray[$i] = $tb_name;

	while($row = $result->fetch_assoc()) {
	//$rideradd= $row['address'];
	$flatitude = $row['curr_latitude'];
	$flongitude = $row['curr_longitude'];
    $response["latitude"]=$flatitude;
    $response["longitude"]=$flongitude;
  }	
echo json_encode($response);



 

$mysqli->close();



?>
