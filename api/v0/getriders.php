<?php

#connect to a backend database
$mysqli = new mysqli("localhost", "hopin_admin", "temporarypassword", "hopin");

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

/* Grab data from database */

//$query = "SELECT id, email, username, signed_up, last_login, active_status, driver_status FROM auth WHERE driver_status = 0";
$query = "SELECT auth.id, auth.fullname, users.email, users.latitude, users.longitude, MAX( users.current_timee ) AS curr_time , auth.active_status
FROM users INNER JOIN auth ON auth.email = users.email WHERE auth.driver_status =0 GROUP BY email";
$result = $mysqli->query($query);

$i = 0;

/* Master array for the records  */
$users = array();

while($row = $result->fetch_assoc()) {
  $id            = $row['id'];
  $fullname      = $row['fullname'];
  $emailid       = $row['email'];
	$latitude      = $row['latitude'];
  $longitude     = $row['longitude'];
  $curr_time     = $row['curr_time'];
  $active_status = $row['active_status'];
	$i++;

  $users[] = $row;
}

header('Content-type: application/json');
echo json_encode(array('users'=>$users));

$mysqli->close();

?>
