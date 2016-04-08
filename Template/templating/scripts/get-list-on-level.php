<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["barangay_id"]) && !empty($_POST["return_period"]) && !empty($_POST["flood_level"])) {
	$query ="SELECT DISTINCT households.id as h_id, latitude as lat, longitude as lon, households.name as h_name, households.household_usage as h_usage, households.structure as h_structure
	FROM flood_maps INNER JOIN barangays on flood_maps.barangay_id = barangays.id, 
	residents INNER JOIN family_members on family_members.resident_id = residents.id
	INNER JOIN families on family_members.family_id = families.id
	INNER JOIN households on families.household_id = households. id 
	WHERE ST_CONTAINS(flood_maps.shape, Point(households.longitude, households.latitude))
	AND barangays.id = '" . $_POST["barangay_id"] . "'
	AND flood_maps.return_period = '" . $_POST["return_period"] . "'
	AND flood_maps.level = '" . $_POST["flood_level"] . "'";
	$results = $db_handle->runQuery($query);

	echo json_encode($results);

}
?>