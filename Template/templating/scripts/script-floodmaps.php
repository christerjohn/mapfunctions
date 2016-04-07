<script>
        function enableFloodMaps() {

            var barangay_id = document.getElementById("barangay-list").value;
            var return_period = document.getElementById("return1").value;

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

        }
  </script>