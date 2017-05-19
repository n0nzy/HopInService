
require_once("dbcred.php");


$drivername = $_REQUEST["ridername"];





#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


if($mysqli->connect_errno){

  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

	$query = "SELECT * from users WHERE fullname='$drivername'";
	//echo $query;
	$result=$mysqli->query($query);
	//$idarray[$i] = $tb_name;
	$row=$result->fetch_assoc();
	//$rideradd= $row['address'];
	$flatitude=$row['curr_latitude'];
	$flongitude=$row['curr_longitude'];
  $response["latitude"]=$flatitude;
  $response["longitude"]=$flongitude;

echo json_encode($response);

$mysqli->close();


?>
