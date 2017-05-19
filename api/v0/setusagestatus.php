<?php
/* Change the status of the user to either driver or rider */

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

$status = getIfSet($_REQUEST['status']);
$emailid = getIfSet($_REQUEST['emailid']);

$flag = "";

if ($status == "setdriver") {
  $flag = 1;
}
else {
  $flag = 0;
}

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

//update user's current usage status
$query = "UPDATE  users SET  driver_status = $flag WHERE  email = '$emailid'";
//print ($query);

//$result = $mysqli->query($query);
if($mysqli->query($query)) {
 echo "it worked! Updated record";
}
else {
  print("Error updating record: " . $mysqli->error . "\n");
}

$mysqli->close();

?>
