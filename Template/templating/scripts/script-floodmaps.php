<script>
        function enableFloodMaps() {

            var barangay_id = document.getElementById("barangay-list").value;
            var return_period = document.getElementById("return1").value;
            var flood_level = document.getElementById("highlight1").value;

      $(function(){
          $.ajax({
            type: "POST",
            url: "../../../../scripts/get-floodmaps.php",
            data:{barangay_id : barangay_id, return_period : return_period},
            success: function(data){

                  setFloodOnMapAll(null);
                  floods = [];

              if(data!==null && data.length!== 0)
              {

               $.each($.parseJSON(data), function(index, element) {
                    floods.push(element.floodmaps_shape);
                });

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
            }
            });
      });

      $(function(){
          $.ajax({
            type: "POST",
            url: "../../../../scripts/get-points-on-level.php",
            data:{barangay_id : barangay_id, return_period : return_period, flood_level : flood_level},
            success: function(data){


              if(data!==null && data.length!== 0)
              {
                  setMarkerOnMapAll(null);
                  markerArray = [];

                   $.each($.parseJSON(data), function(index, element) {
                      var h_name = element.h_name;
                      var h_id = element.h_id;
                      var info = "<b>" + h_id + "</b><br/>" + h_name;
                      addMarker(h_id, element.lat, element.lon, info);
                      addPoint(element.lat, element.lon);
                    });

                    center = bounds.getCenter();
                    map.fitBounds(bounds);
              }
            }
            });
      });

        }
  </script>