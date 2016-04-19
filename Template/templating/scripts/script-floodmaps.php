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
                            strokeOpacity : 0.60,
                            strokeWeight : 0,
                            fillColor : colors[i],
                            fillOpacity : 0.60
                        });
                        floods[i].setMap(map);
                    }
                }
              }
            }
            });
      });
    
      if (flood_level != '0')
      {
            setMarkerOnMapAll(null);
            markerArray = [];

            $(function(){
                $.ajax({
                  type: "POST",
                  url: "../../../../scripts/get-points-on-level.php",
                  data:{barangay_id : barangay_id, return_period : return_period, flood_level : flood_level},
                  success: function(data){


                    if(data!==null && data.length!== 0)
                    {
                      $('#household-list').dataTable().fnClearTable();
                        setIcon("https://lh4.ggpht.com/FRLzoxHDpRHxP6aFWxxQ1OUPlWnc55ZqnO7EpLtD8FBn6EK1zBerpF9P3BE3jJ6SFLNF7P0=w9-h9");
                         $.each($.parseJSON(data), function(index, element) {
                            var h_name = element.h_name;
                            var h_id = element.h_id;
                            var info = "<b>" + h_id + "</b><br/>" + h_name;
                            addMarker(element.lat, element.lon, info);
                            addPoint(element.lat, element.lon);

                            $("#household-list").dataTable().fnAddData([
                                h_id,
                                h_name,
                                element.h_usage,
                                element.h_structure,
                                element.purok_id
                            ]);

                        });

                          center = bounds.getCenter();
                          map.fitBounds(bounds);
                    }
                  }
                  });
            });

            $(function(){
                $.ajax({
                  type: "POST",
                  url: "../../../../scripts/get-points-not-on-level.php",
                  data:{barangay_id : barangay_id, return_period : return_period, flood_level : flood_level},
                  success: function(data){

                    if(data!==null && data.length!== 0)
                    {
                        setIcon("https://lh6.ggpht.com/GO-A_KjZDF9yJeeER2fajzO4MgqML-q2rccm27ynBlD6R-xOR3pJOb42WKfE0MNFtRsKwK4=w9-h9");
                         $.each($.parseJSON(data), function(index, element) {
                            var h_name = element.h_name;
                            var h_id = element.h_id;
                            var info = "<b>" + h_id + "</b><br/>" + h_name;
                            addMarker(element.lat, element.lon, info);
                            addPoint(element.lat, element.lon);
                          });

                          center = bounds.getCenter();
                          map.fitBounds(bounds);
                    }
                  }
                  });
            });
      }
    
  }
  </script>