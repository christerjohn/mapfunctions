<!-- Display the Combined Heatmaps and Markers on Google maps by Toggle of the Resident of a Barangay Already connected to DB -->
<?php
include 'functions/config.php';
include 'functions/map-options/sql-mapoptions.php';
include 'functions/map-options/sql-populationoptions.php';
?>
<html>
 <head>
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 <title>Google Map API V3 with markers</title>
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">
 <?php include 'scripts/googlemaps.php'; ?>
 <?php include 'scripts/populationenable.php'; ?>
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
                             <div class="panel-body">                      
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Toggle</label>
                                          <div class="col-md-7">
                                              <div class="btn-group btn-group-sm">
                                                   <button onclick="toggleHeatmap()" type="button" class="btn btn-primary">Heatmap</button>
                                                   <button onclick="toggleBoundary()" type="button" class="btn btn-primary">Boundary</button> 
                                              </div>
                                           </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Structure</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="structure1" disabled>
                                                  <?php 
                                                      while ($row = mysql_fetch_array($structure))
                                                      {
                                                          echo "<option>".$row[structure]."</option>";
                                                      }
                                                  ?>    
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Usage</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="usage1" disabled>
                                                 <?php 
                                                      while ($row = mysql_fetch_array($usage))
                                                      {
                                                          echo "<option>".$row[household_usage]."</option>";
                                                      }
                                                  ?>   
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Family Income</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="family1" disabled>
                                                  <?php 
                                                      while ($row = mysql_fetch_array($income))
                                                      {
                                                          echo "<option>".$row[net_value]."</option>";
                                                      }
                                                  ?>      
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Education Level</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="education1" disabled>
                                              <option>HighSchool</option>
                                              <option>College</option>    
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Occupation</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="occupation1" disabled>
                                              <option>Teacher</option>
                                              <option>Level 2</option>    
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Gender</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="gender1" disabled>
                                              <option>Male</option>
                                              <option>Female</option>    
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Age</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="age1" disabled>
                                              <option>27</option>
                                              <option>28</option>    
                                              </select> 
                                          </div>
                                    </div>
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Civil Status</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="civil1" disabled>
                                              <option>Single</option>
                                              <option>Married</option>    
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
                                 <div id="map"  style="width:100%;height:110%;"></div>
                                    
                            </div>
                     </div>
                </div>                


         </div>
    
</body>
