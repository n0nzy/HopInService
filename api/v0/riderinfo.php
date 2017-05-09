<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);

$ridername = $_REQUEST["ridername"];

if($mysqli->connect_errno){

  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

	$query = "SELECT * from users WHERE username='$ridername'";
	$result=$mysqli->query($query);
	//$idarray[$i] = $tb_name;

	while($row = $result->fetch_assoc()) {
	//$rideradd= $row['address'];
	$flatitude = $row['curr_latitude'];
	$flongitude = $row['curr_longitude'];
	$drivername=$row['drivername'];
    $selected=$row['selected'];
  }
if($selected==0)
{
    $response["selected"]=$selected;
    echo json_encode($response);
}
else{
$query = "SELECT * from users WHERE username='$drivername'";
$dphone=$row["phone"];
$dfullname=$row["fullname"];
$dspecs=$row["vehicle_name"];
$response["selected"]=$selected;
$response["phone"]=$dphone;
$response["driverfullname"]=$dfullname;
$response["latitude"]=$flatitude;
$response["longitude"]=$flongitude;
$response["vehicle_name"]=$dspecs;


echo json_encode($response);
}

$mysqli->close();

?>
