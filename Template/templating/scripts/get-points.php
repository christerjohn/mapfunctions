 <?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["barangay_id"])) {
	$query ="SELECT households.id, latitude as lat, longitude as lon, households.name 
 	FROM households INNER JOIN puroks on households.purok_id = puroks.id 
 	INNER JOIN barangays on puroks.barangay_id = barangays.id 
 	WHERE barangays.id = '" . $_POST["barangay_id"] . "'";;
	$results = $db_handle->runQuery($query);

 $query = mysql_query($query) or die($query."<br/><br/>".mysql_error());;
 while ($row = $results){
 $id=$row['id'];
 $lat=$row['lat'];
 $lon=$row['lon'];
 $name=$row["name"];
 	echo ("addMarker($lat, $lon,\"<b>$id</b><br/>$name\");\n");
   	echo ("addPoint($lat, $lon);");
 }

}
?>