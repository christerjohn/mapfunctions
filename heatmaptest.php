<!-- Display Heatmap of the Resident of a Barangay Already connected to DB -->
<?php
$dbname            ='brisgeo'; //Name of the database
$dbuser            ='root'; //Username for the db
$dbpass            =''; //Password for the db
$dbserver          ='localhost'; //Name of the mysql server
 
$dbcnx = mysql_connect ("$dbserver", "$dbuser", "$dbpass");
mysql_select_db("$dbname") or die(mysql_error());
?>
<html>
 <head>
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 <title>Google Map API V3 with markers</title>
 <style type="text/css">
 body { font: normal 10pt Helvetica, Arial; }
 #map { width: 750px; height: 750px; border: 0px; padding: 0px; }
 </style>
     <script 
        src="https://maps.googleapis.com/maps/api/js?&libraries=visualization"  type="text/javascript">
    </script>
 <script type="text/javascript">
 
 var center = null;
 var map = null;
 var currentPopup;
 var bounds = new google.maps.LatLngBounds();
 var latlongs = [];
 function addPoint(lat, lng) {
 	var pt = new google.maps.LatLng(lat, lng);
 	bounds.extend(pt);
 	latlongs.push(pt);
 }
 function getPoints() {
 	return latlongs;
 }

 function initMap() {
 map = new google.maps.Map(document.getElementById("map"), {
 center: new google.maps.LatLng(0, 0),
 zoom: 14,
 mapTypeId: google.maps.MapTypeId.ROADMAP,
 mapTypeControl: false,
 mapTypeControlOptions: {
 style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR
 },
 navigationControl: true,
 navigationControlOptions: {
 style: google.maps.NavigationControlStyle.SMALL
 }
 });

          heatmap = new google.maps.visualization.HeatmapLayer({
          data: getPoints(),
          map: map
        });

 <?php
 $query = mysql_query("SELECT id, latitude as lat, longitude as lon, description FROM residents");
 while ($row = mysql_fetch_array($query)){
 $name=$row['id'];
 $lat=$row['lat'];
 $lon=$row['lon'];
 $description=$row['description'];
   echo ("addPoint($lat, $lon);");
 }
 ?>
 center = bounds.getCenter();
 map.fitBounds(bounds);
 
 }
 </script>
 </head>
 <body onload="initMap()" style="margin:0px; border:0px; padding:0px;">
 <div id="map"></div>
 </html>