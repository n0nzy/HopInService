<?php

$username = $_REQUEST["username"];
$email = $_REQUEST["email"];
$phone = $_REQUEST["phone"];
$street = $_REQUEST["street"];
$city = $_REQUEST["city"];
$state = $_REQUEST["state"];
$zip = $_REQUEST["zip"];

$mysqli = new mysqli("localhost", "hopin_admin", "temporarypassword", "hopin");

if($mysqli->connect_errno){
  echo "Hello World\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

$query = "SELECT * FROM `users` WHERE `username` = '$username' AND `email` = '$email'";
//print("Select from users query: " . $query . "\n");
$result = $mysqli->query($query);
$row = $result->fetch_assoc();

if($row){
	$query = "UPDATE `users` SET `phone`='$phone', `street`='$street', `city`='$city', `state`='$state', `zipcode`='$zip' WHERE `username` = '$username' AND `email` = '$email'";
  //print("Data to update: " . $query . "\n");
	$result = $mysqli->query($query);
	print("Registration Successful\n");
}
else{
	print("Registration Error\n");
}

?>
