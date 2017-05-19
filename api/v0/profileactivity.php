<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);

$username = $_REQUEST["username"];
$email = $_REQUEST["email"];

if($mysqli->connect_errno){
  echo "Hello World\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

$query = "SELECT `email`,`fullname`,`street`,`city`,`state`,`zipcode`,`phone`,`vehicle_name`,`vehicle_specs`,`driver_status` FROM `users` WHERE `username` = '$username' AND `email` = '$email'";
$result = $mysqli->query($query);

//$users = array();
$user = "";
while($row = $result->fetch_assoc()){
	$user = $row;
}
echo json_encode(array('users'=>$user));

?>
