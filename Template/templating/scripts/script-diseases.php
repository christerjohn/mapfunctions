<script>
        function DiseasesFnc() {

            var disease_id = document.getElementById("disease1").value;


            console.log(disease_id);
setMarkerOnMapAll(null);
            markerArray = [];
            latlongs = [];
            
    var locations = [
      ['Bondi Beach', 8.253333333, 124.2653889],
      ['Coogee Beach', 8.253333333, 124.2650278],
      ['Cronulla Beach', 8.253444444, 124.2651944],
      ['Manly Beach', 8.253555556, 124.2650833],
      ['Maroubra Beach', 8.2535,  124.2651111],
            ['Manly Beach', 8.253416667, 124.2650556],
      ['Maroubra Beach', 8.253777778, 124.2649444]

    ];

    var infowindow = new google.maps.InfoWindow();
    var marker, i;
    var markersArray = [];
    setIcon("https://lh6.ggpht.com/GO-A_KjZDF9yJeeER2fajzO4MgqML-q2rccm27ynBlD6R-xOR3pJOb42WKfE0MNFtRsKwK4=w9-h9");
    for (i = 0; i < locations.length; i++) {  
       var h_name = locations[i][0];
                            var h_id = "001";
                            var info = "<b>" + h_id + "</b><br/>" + h_name;
                            addMarker(locations[i][1], locations[i][2], info);
                            addPoint(locations[i][1], locations[i][2]);
       
    }

              heatmap = new google.maps.visualization.HeatmapLayer({
            data: getPoints(),
            map: null
          });
    
  }
  </script>