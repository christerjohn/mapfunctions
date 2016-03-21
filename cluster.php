<html>
  <head>
    <title>MarkerClusterer v3 Simple Example</title>
    <style >
      body {
        margin: 0;
        padding: 10px 20px 20px;
        font-family: Arial;
        font-size: 16px;
      }
      #map-container {
        padding: 6px;
        border-width: 1px;
        border-style: solid;
        border-color: #ccc #ccc #999 #ccc;
        -webkit-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
        -moz-box-shadow: rgba(64, 64, 64, 0.5) 0 2px 5px;
        box-shadow: rgba(64, 64, 64, 0.1) 0 2px 5px;
        width: 600px;
      }
      #map {
        width: 600px;
        height: 400px;
      }
    </style>

    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

      <script type="text/javascript" src="src/markerclusterer_compiled.js"></script>
     
    <script>
      function initialize() {
        // var center = new google.maps.LatLng(37.4419, -122.1419);
        // var map = new google.maps.Map(document.getElementById('map'), {
        //   zoom: 3,
        //   center: center,
        //   mapTypeId: google.maps.MapTypeId.ROADMAP
        // });
        // var markers = [];
        // for (var i = 0; i < 100; i++) {
        //   var dataPhoto = data.photos[i];
        //   var latLng = new google.maps.LatLng(dataPhoto.latitude,
        //       dataPhoto.longitude);
        //   var marker = new google.maps.Marker({
        //     position: latLng
        //   });
        //   markers.push(marker);
        // }
        //----------------
         var locations = [
      ['Bondi Beach', -33.890542, 151.274856],
      ['Coogee Beach', -33.923036, 151.259052],
      ['Cronulla Beach', -34.028249, 151.157507],
      ['Manly Beach', -33.80010128657071, 151.28747820854187],
      ['Maroubra Beach', -33.950198, 151.259302]
    ];
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 10,
      center: new google.maps.LatLng(-33.92, 151.25),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var infowindow = new google.maps.InfoWindow();
    var marker, i;
    var markersArray = [];
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
       markersArray.push(marker);
    }
    //-----------
   //var mcOptions = {gridSize: 50, maxZoom: 15}; 
        var markerCluster = new MarkerClusterer(map, markersArray);
       
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>

  </head>
  <body>
    <div id="map-container"><div id="map"></div></div>
  </body>
</html>