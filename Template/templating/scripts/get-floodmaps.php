<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["barangay_id"]) && !empty($_POST["return_period"])) {
	$query ="SELECT AsText(shape) AS floodmaps_shape FROM flood_maps
 	INNER JOIN barangays on flood_maps.barangay_id = barangays.id 
 	WHERE barangays.id = '" . $_POST["barangay_id"] . "' AND flood_maps.return_period = '" . $_POST["return_period"] . "'";
	$results = $db_handle->runQuery($query);

	echo json_encode($results);

}
?>