<script type="text/javascript">
 //Sample code written by August Li
 var icon = new google.maps.MarkerImage("https://lh6.ggpht.com/GO-A_KjZDF9yJeeER2fajzO4MgqML-q2rccm27ynBlD6R-xOR3pJOb42WKfE0MNFtRsKwK4=w9-h9",
 new google.maps.Size(10, 10), 
 new google.maps.Point(0, 0),
 new google.maps.Point(5,5));

 var center = null;
 var map = null;
 var currentPopup;
 var bounds = new google.maps.LatLngBounds();
 var latlongs = [];
 var markerArray = [];
 var tmp;
 var temp;
 var i;
 var polys = [];
 var floods = [];


 function addPoint(lat, lng) {
 	var pt = new google.maps.LatLng(lat, lng);
 	bounds.extend(pt);
 	latlongs.push(pt);
 }

 function getPoints() {
 	return latlongs;
 }

 function addMarker(lat, lng, info) {
     var pt = new google.maps.LatLng(lat, lng);
     bounds.extend(pt);

     var marker = new google.maps.Marker({
         position: pt,
         icon: icon,
         map: map
    });

     var popup = new google.maps.InfoWindow({
         content: info,
         maxWidth: 300
     });

     google.maps.event.addListener(marker, "click", function() {
         if (currentPopup != null) {
             currentPopup.close();
             currentPopup = null;
         }

         popup.open(map, marker);
         currentPopup = popup;
     });

     google.maps.event.addListener(popup, "closeclick", function() {
         map.panTo(center);
         currentPopup = null;
     });

      markerArray.push(marker);
 }

 function setMarkerOnMapAll(map) {
  for (var i = 0; i < markerArray.length; i++) {
    markerArray[i].setMap(map);
  }
}

 function setBoundaryOnMapAll(map) {
  for (var i = 0; i < polys.length; i++) {
    polys[i].setMap(map);
  }
}

       function toggleHeatmap() {
        heatmap.setMap(heatmap.getMap() ? null : map);

            if (markerArray[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }

            var arg = null;
            
            for (var i = 0; i < polys.length; i++) {
                polys[i].setMap(arg);
            }

            var arg = null;
            
            for (var i = 0; i < floods.length; i++) {
                floods[i].setMap(arg);
            }
      }

      function toggleBoundary() {
            

            var arg = map;
            
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }

            if (polys!==null && polys.length!== 0){

                if (polys[0].getMap() != null) {
                    var arg = null;
                } else {
                    var arg = map;
                }
            }

            for (var i = 0; i < polys.length; i++) {
                polys[i].setMap(arg);
            }

            heatmap.setMap(null);
      }

      function toggleFloodHazard() {
            
            var arg = map;
            
            for (var i = 0; i < markerArray.length; i++) {
                markerArray[i].setMap(arg);
            }

            if (floods[0].getMap() != null) {
                var arg = null;
            } else {
                var arg = map;
            }
            for (var i = 0; i < floods.length; i++) {
                floods[i].setMap(arg);
            }

            heatmap.setMap(null);

      }


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


 function initMap() {
     map = new google.maps.Map(document.getElementById("map"), {
         center: new google.maps.LatLng(8.2280,124.2452),
         zoom: 14,
         mapTypeId: google.maps.MapTypeId.ROADMAP,
         mapTypeControl: true,
         mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR
         },
         navigationControl: true,
         navigationControlOptions: {
            style: google.maps.NavigationControlStyle.SMALL
         }
     });

 
 }
 </script>
