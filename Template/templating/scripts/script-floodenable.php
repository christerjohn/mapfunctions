<script>
        function enable() {
          document.getElementById("return1").disabled=false;
          document.getElementById("highlight1").disabled=false;
          document.getElementById("go2").disabled=false;
          document.getElementById("boundary_toggle").disabled=false;
			var barangay_id = document.getElementById("barangay-list").value;
			alert(barangay_id); 


 <?php
echo ("document.getElementByID('barangay-list').value;");
$barangayID = $abc;
 $sql = "SELECT households.id, latitude as lat, longitude as lon, households.name 
 	FROM households INNER JOIN puroks on households.purok_id = puroks.id 
 	INNER JOIN barangays on puroks.barangay_id = barangays.id 
 	WHERE barangays.id = " . $barangayID;

 $query = mysql_query($sql) or die($sql."<br/><br/>".mysql_error());;
 while ($row = mysql_fetch_array($query)){
 $id=$row['id'];
 $lat=$row['lat'];
 $lon=$row['lon'];
 $name=$row["name"];
 echo ("addMarker($lat, $lon,\"<b>$id</b><br/>$name\");\n");
   echo ("addPoint($lat, $lon);");
 }
?>


<?php
$query = mysql_query("SELECT AsText(shape) AS SHAPE FROM purok_boundaries");
 while ($row = mysql_fetch_array($query)){
     $temp = $row["SHAPE"];
     echo "polys.push('$temp');";
 }

 ?>

     for (i = 0; i < polys.length; i++) {
        tmp = parsePolyStrings(polys[i]);
        if (tmp.length) {
            polys[i] = new google.maps.Polygon({
                paths : tmp,
                strokeColor : '#000000',
                strokeOpacity : 0.6,
                strokeWeight : 1,
                fillColor : '#FFFFFF',
                fillOpacity : 0
            });
            polys[i].setMap(null);
        }
    }



 center = bounds.getCenter();
 map.fitBounds(bounds);



            if (floods[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < floods.length; i++) {
                floods[i].setMap(arg);
            }


        }
  </script>