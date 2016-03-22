<!-- Display Flood Hazard on Google maps Already connected to DB -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Some Title</title>
</head>
<body>
<div id="map_canvas" style="width:800px; height:600px;">
</div>

<?php

echo '<script type="text/javascript">';
//note the quote styles below, Important!
echo "var polys=[];";


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "brisgeo";


// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT AsText(SHAPE) AS SHAPE FROM flood";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
     $temp = $row["SHAPE"];
     echo "polys.push('$temp');";
    }
} else {
    echo "0 results";
}
echo "window.alert('0 results');";
$conn->close();

echo '</script>';

/*
$polyString1 = 'MULTIPOLYGON(((124.25897311268 8.2545719836116,124.2607460733 8.2552902935317,124.26189852782 8.255461879924,124.2628992841 8.2556116400982,124.26405684102 8.2557626254185,124.26405571524 8.2553275262052,124.26404858927 8.2548668251459,124.26492317866 8.2544857877429,124.26531236233 8.254340069521,124.26575819276 8.2541915991247,124.26573056709 8.2532058409472,124.26623758316 8.253035455882,124.26664702464 8.2528919749781,124.26682557032 8.2530854778815,124.26717196112 8.2535735740037,124.26757721138 8.2534485044095,124.26798876789 8.2532849008229,124.26841544293 8.2531211023534,124.26875654376 8.2529752207686,124.26905868725 8.2523097386564,124.26892606305 8.2515128793903,124.26853161724 8.2512122782655,124.26823115067 8.2508873795302,124.26760572858 8.25069607673,124.26684348253 8.2506342729963,124.26630785017 8.2507578804638,124.26625889125 8.2507671617967,124.26449494065 8.2510771997549,124.26381509958 8.2512626109562,124.26265816717 8.2519595327212,124.26119874151 8.2525295874983,124.26016867929 8.2529828148793,124.25956094257 8.2533021341704,124.2591592183 8.2536317540838,124.25897311268 8.2545719836116)))';
$polyString2 = 'MULTIPOLYGON(((124.26001161758 8.2473249176906,124.2597801206 8.2470421081816,124.2597801206 8.2470421081816,124.25943245872 8.2467510239049,124.25859502978 8.2460974694571,124.2580448599 8.2458216000335,124.25783304295 8.2463031169582,124.25781379656 8.2464079314315,124.25804953504 8.2470573812526,124.25723325015 8.2473619360873,124.2571727845 8.2474673222562,124.25714084013 8.247562002733,124.25780920419 8.247899421814,124.25780920419 8.247899421814,124.2587912829 8.2483322835502,124.26001161758 8.2473249176906)))';


echo '<script type="text/javascript">';
//note the quote styles below, Important!
echo "var polys=[];";
echo "polys.push('$polyString1');";
echo "polys.push('$polyString2');";
echo '</script>';*/

?>
<script src="https://maps.googleapis.com/maps/api/js?v=3&sensor=false"></script>
<script type="text/javascript">

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

function init() {
    var i, tmp,
        myOptions = {
            zoom: 16,
            center: new google.maps.LatLng( 8.2545719836116, 124.25897311268),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        },
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

        var colors = ['#ffff00','#ff6600','#ff0000'];

    for (i = 0; i < polys.length; i++) {
        tmp = parsePolyStrings(polys[i]);
        if (tmp.length) {
            polys[i] = new google.maps.Polygon({
                paths : tmp,
                strokeColor : colors[i],
                strokeOpacity : 0.8,
                strokeWeight : 2,
                fillColor : colors[i],
                fillOpacity : 0.8
            });
            polys[i].setMap(map);
        }
    }
}

init();

</script>
</body>
</html>

<!-- 
SELECT residents.id FROM dissolve, residents WHERE ST_CONTAINS(dissolve.diz, Point(residents.latitude, residents.longitude)) -->