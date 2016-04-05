<!-- Display the Combined Heatmaps and Markers on Google maps by Toggle of the Resident of a Barangay Already connected to DB -->
<?php
include 'functions/config.php';
include 'functions/map-options/sql-mapoptions.php';
include 'functions/map-options/sql-floodoptions.php';

?>
<html>
 <head>
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 <title>Google Map API V3 with markers</title>
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">
<?php include 'scripts/googlemaps.php'; ?>
<?php include 'scripts/floodenable.php'; ?>
 
<?php include 'scripts/scripts-maps/maps.php';?>
 </head>
<body onload="initMap()" style="margin:0px; border:0px; padding:0px;">

            <div class="row">
               <div class="col-md-3">
                     <div class="panel panel-primary">
                        <div class="panel-heading">Map Options</div>
                             <div class="panel-body">

                                 <div class="form-group row">
                                    <label class="col-md-4 control-label">Province</label>
                                    <div class="col-md-7">
                                        <select class="form-control" id="province1">
                                           <?php 
                                              while ($row = mysql_fetch_array($provinces))
                                              {
                                                  echo "<option>".$row[name]."</option>";
                                              }
                                            ?>  
                                        </select>                          
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Municipality</label>
                                    <div class="col-md-7">
                                       <select class="form-control" id="mun1">
                                           <?php 
                                              while ($row = mysql_fetch_array($municipalities))
                                              {
                                                  echo "<option>".$row[name]."</option>";
                                              }
                                            ?>  
                                        </select>                         
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Barangay</label>
                                    <div class="col-md-7">
                                        <select class="form-control" id="barangay1">
                                            <?php 
                                                  while ($row = mysql_fetch_array($barangay))
                                                  {
                                                      echo "<option>".$row[name]."</option>";
                                                  }
                                                ?>  
                                        </select>                        
                                    </div>
                                 </div>
                                 <div class="row">
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4">
                                              <button  onclick="enable()" type="button" class="btn btn-primary" btn-sm>GO</button>
                                      </div>
                                 </div>
                                <!--  <div class="col-md-10">
                                    <div class="col-md-3">
                                        <button  type="button" class="btn btn-primary">GO</button>
                                    </div>
                                 </div> -->
                               <!--  <br>
                                    <button onclick="toggleHeatmap()" type="button" class="btn btn-primary">Toggle Heatmap</button>
                                   
                                <br></br>
                                    <button onclick="toggleBoundary()" type="button" class="btn btn-primary">Toggle Boundary</button>
                                  
                                <br></br>
                                    <button onclick="toggleFloodHazard()" type="button" class="btn btn-primary">Toggle  Hazard</button>
                               
                                <br></br> -->
                    
                             </div>
                    </div>

                     <div class="panel panel-primary">
                         <div class="panel-heading">Flood Map</div>
                             <div class="panel-body">                      
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Return Period</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="return1" disabled>
                                                 <?php 
                                                    while ($row = mysql_fetch_array($return))
                                                    {
                                                        echo "<option>".$row[return_period]."</option>";
                                                    }
                                                  ?>  
                                              </select>                          
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Highlight Resident</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="highlight1" disabled>
                                                 <?php 
                                                    while ($row = mysql_fetch_array($level))
                                                    {
                                                        echo "<option>".$row[level]."</option>";
                                                    }
                                                  ?>  
                                              </select>                          
                                          </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4">
                                                <button  id="go2" type="button" class="btn btn-primary" btn-sm disabled>GO</button>
                                        </div>
                                 </div>

                            </div>
                     </div>
            

                </div>

                <div class="col-md-9">
                     <div class="panel panel-primary">
                         <div class="panel-heading">Map</div>
                             <div class="panel-body">                      
                                 <div id="map"  style="width:100%;height:85%;"></div>
                                    
                            </div>
                     </div>
                </div>                


         </div>
    
</body
