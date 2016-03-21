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
 //Sample code written by August Li
 var icon = new google.maps.MarkerImage("https://lh6.ggpht.com/GO-A_KjZDF9yJeeER2fajzO4MgqML-q2rccm27ynBlD6R-xOR3pJOb42WKfE0MNFtRsKwK4=w9-h9",
 new google.maps.Size(10, 10), new google.maps.Point(0, 0),
 new google.maps.Point(5,5));
 var center = null;
 var map = null;
 var currentPopup;
 var bounds = new google.maps.LatLngBounds();
 var latlongs = [];
 var markerArray = [];
 function addPoint(lat, lng) {
 	var pt = new google.maps.LatLng(lat, lng);
 	bounds.extend(pt);
 	latlongs.push(pt);
 }
 function getPoints() {
 	return latlongs;
 }
 function addMarker(lat, lng, info) {
 var pt = new google.maps.LatLng(lat, lng);
 bounds.extend(pt);
 var marker = new google.maps.Marker({
 position: pt,
 icon: icon,
 map: map
 });
 var popup = new google.maps.InfoWindow({
 content: info,
 maxWidth: 300
 });
 google.maps.event.addListener(marker, "click", function() {
 if (currentPopup != null) {
 currentPopup.close();
 currentPopup = null;
 }
 popup.open(map, marker);
 currentPopup = popup;
 });
 google.maps.event.addListener(popup, "closeclick", function() {
 map.panTo(center);
 currentPopup = null;
 });
  markerArray.push(marker);
 }

       function toggleHeatmap() {
        heatmap.setMap(heatmap.getMap() ? null : map);

            if (markerArray[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }
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
          map: null
        });


 <?php
 $query = mysql_query("SELECT id, latitude as lat, longitude as lon, description FROM residents");
 while ($row = mysql_fetch_array($query)){
 $name=$row['id'];
 $lat=$row['lat'];
 $lon=$row['lon'];
 $description=$row['description'];
 echo ("addMarker($lat, $lon,'<b>$name</b><br/>$description');\n");
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
     <div id="floating-panel">
      <button onclick="toggleHeatmap()">Toggle Heatmap</button>
      <button onclick="changeGradient()">Change gradient</button>
      <button onclick="changeRadius()">Change radius</button>
      <button onclick="changeOpacity()">Change opacity</button>
    </div>
 </html>