<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["barangay_id"])) {
	$query ="SELECT households.id as h_id, latitude as lat, longitude as lon, households.name as h_name
 	FROM households INNER JOIN puroks on households.purok_id = puroks.id 
 	INNER JOIN barangays on puroks.barangay_id = barangays.id 
 	WHERE barangays.id = '" . $_POST["barangay_id"] . "'";
	$results = $db_handle->runQuery($query);

	echo json_encode($results);

}
?>