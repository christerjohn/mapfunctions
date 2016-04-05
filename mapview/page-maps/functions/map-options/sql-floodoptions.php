<?php

$query3 = "SELECT DISTINCT return_period FROM flood_maps";
$return = mysql_query($query3) or die(mysql_error()."[".$query3."]");
$query4 = "SELECT level FROM flood_maps";
$level = mysql_query($query4) or die(mysql_error()."[".$query4."]");

?>