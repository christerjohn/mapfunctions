<?php

$query3 = "SELECT DISTINCT structure FROM households where structure !=''";
$structure = mysql_query($query3) or die(mysql_error()."[".$query3."]");
$query4 = "SELECT DISTINCT household_usage FROM households";
$usage = mysql_query($query4) or die(mysql_error()."[".$query4."]");
$query5 = "SELECT DISTINCT net_value FROM households ORDER BY net_value DESC";
$income = mysql_query($query5) or die(mysql_error()."[".$query5."]");

?>