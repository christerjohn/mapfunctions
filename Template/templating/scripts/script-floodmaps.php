<script>
        function enableFloodMaps() {

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
            floods[i].setMap(map);
        }
    }

        }
  </script>