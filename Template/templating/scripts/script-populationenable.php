 <script>
        function enablePopulation() {
          document.getElementById("toggle-heatmap").disabled=false;
          document.getElementById("toggle-boundary").disabled=false;
          document.getElementById("disease1").disabled=false;

/*          document.getElementById("structure1").disabled=false;
          document.getElementById("family1").disabled=false;
          document.getElementById("usage1").disabled=false;
          document.getElementById("education1").disabled=false;
          document.getElementById("occupation1").disabled=false;
          document.getElementById("gender1").disabled=false;
          document.getElementById("age1").disabled=false;
          document.getElementById("civil1").disabled=false;*/
          document.getElementById("go2").disabled=false;
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
