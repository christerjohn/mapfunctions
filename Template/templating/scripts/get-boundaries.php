 <?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["barangay_id"])) {
	$query ="SELECT AsText(shape) AS shape_boundary FROM purok_boundaries
	INNER JOIN puroks on purok_boundaries.purok_id = puroks.id 
 	INNER JOIN barangays on puroks.barangay_id = barangays.id 
 	WHERE barangays.id = '" . $_POST["barangay_id"] . "'";;
	$results = $db_handle->runQuery($query);

	echo json_encode($results);

}
?>