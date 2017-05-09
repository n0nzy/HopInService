<?php

require_once("dbcred.php");
#connect to a backend database
$mysqli = new mysqli(SERVER, DBUSER, DBPASS, DB);


    function getDistanceinKm($lat1, $lat2, $lon1, $lon2){
        $R = 6371;
        $dLat = deg2rad($lat2-$lat1);
        $dLon = deg2rad($lon2-$lon1);

        $a = sin($dLat/2) * sin($dLat/2) + cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * sin($dLon/2) * sin($dLon/2);
        $c = 2 * atan2(sqrt($a), sqrt(1-$a));
        $d = $R * $c;
        return $d;
    }


    $userEmail = $_REQUEST['userEmail'];
    $latitude = $_REQUEST['latitude'];
    $longitude = $_REQUEST['longitude'];


    if($mysqli->connect_errno){
        print("Error connecting to the database: " . $mysqli->connect_errno ."\n");
        exit();
    }

    $query = "UPDATE users set curr_latitude = '$latitude' , curr_longitude = '$longitude' where email = '$userEmail'";
    $result = $mysqli->query($query);

    if($result == TRUE)
    {
        $response["success"] = 0;
        $response["message"] = "Record updated successfully";

    }
    else{

        $response["success"] = -1;
        $response["message"] = "User Info update failed";

        }
    $query = "SELECT fullname, curr_latitude,curr_longitude from users where email != '$userEmail'";
    $riders = $mysqli->query($query);

    if(mysqli_num_rows($riders)>0)
    {
        $response["riders"] = array();
        while($row = mysqli_fetch_array($riders))
        {
              if(!is_null($row[1]) && !is_null($row[2])){
              $distance  = getDistanceinKm($latitude, $row[1],$longitude , $row[2]);
              if($distance < 1 ){
              $latlongArray = array();
              $latlongArray ["name"] = $row[0];
              $latlongArray ["latitude"] = $row[1];
              $latlongArray ["longitude"] = $row[2];
              $latlongArray ["distance"] = $distance;

               array_push($response["riders"],$latlongArray);
              }
            }
          }
    }

    echo json_encode($response);

    $mysqli->close();
?>
