<?php

#connect to a backend database
$mysqli = new mysqli("localhost", "hopin_admin", "temporarypassword", "hopin");

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

/* Grab data from database */
//SELECT fullname, email, longitude, latitude, MAX( current_timee )
//FROM location GROUP BY email DESC
//$query = "SELECT id, email, username, signed_up, last_login, active_status, driver_status FROM users WHERE driver_status = 1";
$query = "SELECT users.id, users.fullname, location.email, location.latitude, location.longitude, MAX( location.current_timee ) AS curr_time , location.vehicle_name, location.specs, location.seats_num, users.active_status, users.driver_status
FROM location INNER JOIN users ON users.email = location.email WHERE users.driver_status =1 GROUP BY email";

$result = $mysqli->query($query);

$i = 0;

/* Master array for the records  */
$users = array();

while($row = $result->fetch_assoc()) {
	$id = $row['id'];
  $fullname = $row['fullname'];
  $emailid = $row['email'];
	$latitude = $row['latitude'];
  $longitude = $row['longitude'];
  $curr_time = $row['curr_time'];
  $vehicle = $row['vehicle_name'];
  $specs = $row['specs'];
  $seats_num = $row['seats_num'];
  $driver_status = $row['driver_status'];
  $active_status = $row['active_status'];

  $i++;

  $users[] = $row;

//  print "<br />";  print("$fid, ");  print("$femailid, ");  print("$fusername, ");  print("$femail, ");  print("$factive_status");  print "<br />";
}

header('Content-type: application/json');
echo json_encode(array('users'=>$users));

$mysqli->close();

?>
