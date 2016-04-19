<script>
        function DiseasesFnc() {

            var disease_id = document.getElementById("disease1").value;

            console.log(disease_id);
setMarkerOnMapAll(null);
            markerArray = [];

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
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });
       markersArray.push(marker);
    }
      
    
  }
  </script>