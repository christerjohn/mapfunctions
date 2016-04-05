<?php

$query = "SELECT   name FROM provinces";
$provinces = mysql_query($query) or die(mysql_error()."[".$query."]");
$query1 = "SELECT name FROM municipalities";
$municipalities = mysql_query($query1) or die(mysql_error()."[".$query1."]");
$query2 = "SELECT name FROM barangays";
$barangay = mysql_query($query2) or die(mysql_error()."[".$query2."]");

?>