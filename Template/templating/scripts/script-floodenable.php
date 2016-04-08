<script>
        function enable() {
          document.getElementById("return1").disabled=false;
          document.getElementById("highlight1").disabled=false;
          document.getElementById("go2").disabled=false;
          document.getElementById("boundary_toggle").disabled=false;
			var barangay_id = document.getElementById("barangay-list").value;

      $(function(){
          $.ajax({
            type: "POST",
            url: "../../../../scripts/get-points.php",
            data:'barangay_id='+barangay_id,
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


        $(function(){
          $.ajax({
            type: "POST",
            url: "../../../../scripts/get-boundaries.php",
            data:'barangay_id='+barangay_id,
            success: function(data){
              
              if(data!==null && data.length!== 0)
              {
                  setBoundaryOnMapAll(null);
                  polys = [];

                   $.each($.parseJSON(data), function(index, element) {
                        polys.push(element.shape_boundary);
                    });

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

              }
            }
            });
      });


          heatmap = new google.maps.visualization.HeatmapLayer({
            data: getPoints(),
            map: null
          });


    }
  </script>