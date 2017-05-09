<?php
/* Save location of currently loggedin user.  Expects POST parameters from mobile app, do not run through browser. */

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


function getIfSet(&$value) {
  if (isset($value)) {
    return $value;
  }
  else {
    print("invalid input parameter");
    exit;
  }
    //return isset($value) ? $value : exit;
}

$latitude = getIfSet($_REQUEST['latitude']);
$longitude = getIfSet($_REQUEST['longitude']);
$emailid = getIfSet($_REQUEST['emailid']);

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

//update user's current location.
$query = "UPDATE  users SET  curr_latitude =  $latitude, curr_longitude =  $longitude WHERE  email = '$emailid'";
//print ($query);
$result = $mysqli->query($query);
if(!$result) {
		print("Data was not updated in user's table " . $mysqli->error . "\n");
}

// Constant Updates of Information
$query = "INSERT INTO location (id, email, latitude, longitude) VALUES (NULL, '$emailid', $latitude, $longitude )";
//print ($query);
$result = $mysqli->query($query);
if(!$result) {
		print("Data was not inserted into the table " . $mysqli->error . "\n");
}

$query = "SELECT * FROM location where email = '$emailid' ORDER BY current_timee DESC LIMIT 1";
$result = $mysqli->query($query);

$i = 0;

while($row = $result->fetch_assoc()) {
	$fid = $row['id'];
  $femailid = $row['email'];
	$flatitude = $row['latitude'];
	$flongitude = $row['longitude'];
  $fcurrent_time = $row['current_timee'];
	$i++;

  print "<br />";
  print("$fid, ");
  print("$femailid, ");
  print("$flatitude, ");
  print("$flongitude, ");
  print("$fcurrent_time");
  print "<br />";
}

$mysqli->close();

?>
