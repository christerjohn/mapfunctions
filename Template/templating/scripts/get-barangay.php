<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["municipality_id"])) {
	$query ="SELECT * FROM barangays WHERE municipality_id = '" . $_POST["municipality_id"] . "'";
	$results = $db_handle->runQuery($query);
?>
	<option value="">Select Barangay</option>
<?php
	foreach($results as $barangay) {
?>
	<option value="<?php echo $barangay["id"]; ?>"><?php echo $barangay["name"]; ?></option>
<?php
	}
}
?>