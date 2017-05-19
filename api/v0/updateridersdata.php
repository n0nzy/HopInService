<?php

require_once("dbcred.php");

#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);

/* This end-point receives input from the driver about which rider(s) the driver has selected.
   Expected Input:
   1. Logged In Driver username
   2. List of comma seperated fullnames of riders selected.
*/

$drivername = $_REQUEST["drivername"];
$ridernames=$_REQUEST["riders"];

if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

//echo $drivername;
//echo $ridernames;

$query = "UPDATE users SET selected='1',drivername='$drivername' WHERE fullname IN ($ridernames)";
$result = $mysqli->query($query);

// TO-DO: Send some feedback to client based on if the query executed with at least one record updated...perhaps, return number of fields updated.

$mysqli->close();

?>
