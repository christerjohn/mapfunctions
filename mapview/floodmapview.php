<!-- Display the Combined Heatmaps and Markers on Google maps by Toggle of the Resident of a Barangay Already connected to DB -->
<?php
$dbname            ='brisgis_db'; //Name of the database
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



 <link rel="stylesheet" href="src/bootstrap.min.css">

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
 var tmp;
 var temp;
 var i;
 var polys = [];
 var floods = [];
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

            var arg = null;
            
            for (var i = 0; i < polys.length; i++) {
                polys[i].setMap(arg);
            }

            var arg = null;
            
            for (var i = 0; i < floods.length; i++) {
                floods[i].setMap(arg);
            }
      }

      function toggleBoundary() {
            heatmap.setMap(null);

            var arg = map;
            
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }

            if (polys[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < polys.length; i++) {
                polys[i].setMap(arg);
            }
      }

      function toggleFloodHazard() {
            heatmap.setMap(null);

            var arg = map;
            
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }

            if (floods[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < floods.length; i++) {
                floods[i].setMap(arg);
            }
      }


function parsePolyStrings(ps) {
    var i, j, lat, lng, tmp, tmpArr,
        arr = [],
        //match '(' and ')' plus contents between them which contain anything other than '(' or ')'
        m = ps.match(/\([^\(\)]+\)/g);
    if (m !== null) {
        for (i = 0; i < m.length; i++) {
            //match all numeric strings
            tmp = m[i].match(/-?\d+\.?\d*/g);
            if (tmp !== null) {
                //convert all the coordinate sets in tmp from strings to Numbers and convert to LatLng objects
                for (j = 0, tmpArr = []; j < tmp.length; j+=2) {
                    lng = Number(tmp[j]);
                    lat = Number(tmp[j + 1]);
                    tmpArr.push(new google.maps.LatLng(lat, lng));
                }
                arr.push(tmpArr);
            }
        }
    }
    //array of arrays of LatLng objects, or empty array
    return arr;
}


 function initMap() {
 map = new google.maps.Map(document.getElementById("map"), {
 center: new google.maps.LatLng(0, 0),
 zoom: 14,
 mapTypeId: google.maps.MapTypeId.ROADMAP,
 mapTypeControl: true,
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
 $query = mysql_query("SELECT id, latitude as lat, longitude as lon, name FROM households");
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
    $query = mysql_query("SELECT AsText(shape) AS SHAPE FROM flood_maps");
     while ($row = mysql_fetch_array($query)){
         $temp = $row["SHAPE"];
         echo "floods.push('$temp');";
      }

    ?>

    var colors = ['#ffff00','#ff6600','#ff0000'];

    for (i = 0; i < floods.length; i++) {
        tmp = parsePolyStrings(floods[i]);
        if (tmp.length) {
            floods[i] = new google.maps.Polygon({
                paths : tmp,
                strokeColor : colors[i],
                strokeOpacity : 0.35,
                strokeWeight : 2,
                fillColor : colors[i],
                fillOpacity : 0.6
            });
            floods[i].setMap(null);
        }
    }


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
 
 }
 </script>
 </head>
<body onload="initMap()" style="margin:0px; border:0px; padding:0px;">


            <div class="row">
               <div class="col-md-3">
                     <div class="panel panel-primary">
                        <div class="panel-heading">Map Options</div>
                             <div class="panel-body">

                                 <div class="form-group row">
                                    <label class="col-md-4 control-label">Province</label>
                                    <div class="col-md-7">
                                        <select class="form-control" id="barangay1">
                                        <option>Lanao del Norte</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        </select>                          
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Municipality</label>
                                    <div class="col-md-7">
                                        <select class="form-control" id="barangay1">
                                        <option>Iligan City</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        </select>                          
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Barangay</label>
                                    <div class="col-md-7">
                                        <select class="form-control" id="barangay1">
                                        <option>Hinaplanon</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        </select>                          
                                    </div>
                                 </div>
                                 <div class="row">
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4">
                                              <button  type="button" class="btn btn-primary" btn-sm>GO</button>
                                      </div>
                                 </div>
                                <!--  <div class="col-md-10">
                                    <div class="col-md-3">
                                        <button  type="button" class="btn btn-primary">GO</button>
                                    </div>
                                 </div> -->
                               <!--  <br>
                                    <button onclick="toggleHeatmap()" type="button" class="btn btn-primary">Toggle Heatmap</button>
                                   
                                <br></br>
                                    <button onclick="toggleBoundary()" type="button" class="btn btn-primary">Toggle Boundary</button>
                                  
                                <br></br>
                                    <button onclick="toggleFloodHazard()" type="button" class="btn btn-primary">Toggle  Hazard</button>
                               
                                <br></br> -->
                    
                             </div>
                    </div>

                     <div class="panel panel-primary">
                         <div class="panel-heading">Flood Map</div>
                             <div class="panel-body">                      
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Return Period</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="barangay1">
                                              <option>25 years</option>
                                              <option>50 years</option>
                                              <option>100</option>
                                              </select>                          
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Highlight Resident</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="barangay1">
                                              <option>Level 1</option>
                                              <option>Level 2</option>
                                              <option>Level 3</option>
                                              <option>Level 4</option>
                                              </select>                          
                                          </div>
                                    </div>


                            </div>
                     </div>
            

                </div>

                <div class="col-md-9">
                     <div class="panel panel-primary">
                         <div class="panel-heading">Map</div>
                             <div class="panel-body">                      
                                 <div id="map"  style="width:100%;height:85%;"></div>
                                    
                            </div>
                     </div>
                </div>                


         </div>
    
</body
