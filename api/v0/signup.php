<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


$fullname = $_REQUEST["fullname"];
$email = $_REQUEST["email"];
$username = $_REQUEST["username"];
$password = $_REQUEST["password"];

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

$query = "INSERT INTO users (id, fullname, email, username, password, signed_up, last_login) VALUES (NULL, '$fullname', '$email', '$username', '$password', NOW(), CURRENT_TIMESTAMP);";
$result = $mysqli->query($query);

//print ("\n result of INSERT query: " . $result . " | ");

if(!$result){
		print("Data was not inserted into the table " . $mysqli->error . "\n");
}

header('Content-type: application/json');
echo json_encode(array('result'=>$result));

$mysqli->close();

?>
