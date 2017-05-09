<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


function getIfSet(&$value) {
  if (isset($value)) {
    return $value;
  }
  else {
    print("invalid input parameter(s)");
    exit;
  }
    //return isset($value) ? $value : exit;
}

$email = getIfSet($_REQUEST['email']);
$password = getIfSet($_REQUEST['password']);


if($mysqli->connect_errno){
  echo "Could not connect to the database\n";
  echo "Error: ". $mysqli->connect_errno . "\n";
  exit;
}

$selectQuery = "SELECT id, fullname, email FROM users WHERE email = '$email' AND PASSWORD = '$password'";
//$updateQuery = "UPDATE users SET latitude  = '$latitude', longitude  = '$longitude', loc_time = NOW() WHERE users.email  = '$useremail'";

$resultSelectQuery = $mysqli->query($selectQuery);

if ($resultSelectQuery->num_rows > 0) {
  // update response header: set result to true.
  $selectQueryResult = true;
  while($row = $resultSelectQuery->fetch_assoc()) {
  	$id = $row['id'];
    $fullname = $row['fullname'];
    $email = $row['email'];

    //echo "id: " . $row["id"]. " - Name: " . $row["fullname"]. " " . $row["email"]. "<br>";

    $responseToClient = json_encode(array('result' => $selectQueryResult, 'id' => $id, 'fullname' => $fullname, 'email' => $email ));
  }
  $updateQuery = "UPDATE users SET last_login = NOW() WHERE users.email  = '$email'";
  $resultUpdate = $mysqli->query($updateQuery);
}
else {
		//print("Data was not updated in the table " . $mysqli->error . "\n");
    // else set result to false.
    echo json_encode(array( 'result' => false ));
    exit;
}

//$responseToClient = "";


header('Content-type: application/json');
echo $responseToClient;

$mysqli->close();

?>
