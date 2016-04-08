<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["province_id"])) {
	$query ="SELECT * FROM municipalities WHERE province_id = '" . $_POST["province_id"] . "'";
	$results = $db_handle->runQuery($query);
?>
	<option value="">Select Municipality</option>
<?php
	foreach($results as $municipality) {
?>
	<option value="<?php echo $municipality["id"]; ?>"><?php echo $municipality["name"]; ?></option>
<?php
	}
}
?>