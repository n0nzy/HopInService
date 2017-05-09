<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


//$latitude = $_REQUEST["latitude"];
//$longitude = $_REQUEST["longitude"];
//$timestamp = $_REQUEST["timestamp"];
//$id = $_REQUEST["id"];


$latitude = 85.5;
$longitude = 50.3;
$timestamp = "2017-11-4 08:27:00";
$emailid = "dummyserverid@example.com";


if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}


//$query = "INSERT INTO $id(Date, Latitude, Longitude) VALUES('$timestamp', $latitude, $longitude)";
$query = "INSERT INTO users (id, email, latitude, longitude, timestamp) VALUES (NULL, $emailid, $latitude, $longitude, NOW() );";
$result = $mysqli->query($query);
if(!$result) {
		print("Data was not inserted into the table " . $mysqli->error . "\n");
}

$query = "SELECT * FROM users ORDER BY timestamp DESC LIMIT 100";
$result = $mysqli->query($query);

$i = 0;

while($row = $result->fetch_assoc()) {
	$fid = $row['id'];
  $femailid = $row['email'];
	$flatitude = $row['latitude'];
	$flongitude = $row['longitude'];
  $ftimestamp = $row['timestamp'];
	$i++;

  print "<br />";
  print("$fid, ");
  print("$femailid, ");
  print("$flatitude, ");
  print("$flongitude, ");
  print("$ftimestamp");
  print "<br />";
}

$mysqli->close();

?>
