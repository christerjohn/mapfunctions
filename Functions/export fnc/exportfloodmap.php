<?php

if(isset($_POST['export'])){
		$conn = mysql_connect("localhost","root","");
		mysql_select_db("brisgeo",$conn);
		
	  $filename = "floodmap.csv";
	  $fp = fopen('php://output', 'w');
	  $query = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='brisgeo' AND TABLE_NAME='flood'";
	  $result = mysql_query($query);
	while ($row = mysql_fetch_row($result)) 
	{
		$header[] = $row[0];
	}	

	header('Content-type: application/csv');
	header('Content-Disposition: attachment; filename='.$filename);
	fputcsv($fp, $header);

	$query = "SELECT level,AsText(SHAPE) AS SHAPE FROM flood";
	$result = mysql_query($query);
	while($row = mysql_fetch_row($result))
	{
		fputcsv($fp, $row);
	}
	exit;
}

?>
<!DOCTYPE html > 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>export</title> 
</head> 

<body> 
<form action="" method="post">
  <input type="submit" name="export" id="export" class="button" value="Export"/>
</form> 

</body> 
</html> 
