<?php
/* Save location of currently loggedin user.  Expects POST parameters from mobile app, do not run through browser. */

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

#connect to a backend database
$mysqli = new mysqli("localhost", "hopin_admin", "temporarypassword", "hopin");

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

$query = "INSERT INTO users (id, email, latitude, longitude) VALUES (NULL, '$emailid', $latitude, $longitude )";
print ($query);
$result = $mysqli->query($query);
if(!$result) {
		print("Data was not inserted into the table " . $mysqli->error . "\n");
}

$query = "SELECT * FROM users ORDER BY current_timee DESC LIMIT 100";
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
