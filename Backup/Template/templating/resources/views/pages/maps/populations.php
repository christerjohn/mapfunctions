<!-- Display the Combined Heatmaps and Markers on Google maps by Toggle of the Resident of a Barangay Already connected to DB -->
<?php
require_once("../../../../scripts/dbcontroller.php");
$db_handle = new DBController();
$query ="SELECT * FROM provinces";
$results = $db_handle->runQuery($query);

include '../../../../functions/fnc-database/config.php';
include '../../../../functions/fnc-database/sql-map-options/sql-mapoptions.php';
include '../../../../functions/fnc-database/sql-map-options/sql-floodoptions.php';

?>
<html>

<?php
    include '../../layouts/partials/htmlheader.php';
?>

<body class="skin-blue sidebar-mini wysihtml5-supported">
    <div class="wrapper">

        <?php
            include '../../layouts/partials/mainheader.php';
            include '../../layouts/partials/sidebar.php';

        ?>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" style="min-height: 858px;">
            <!-- Your Page Content Here /////////////////////////////////////////// -->

<!-- ////////////////////////////// DARI KA EDIT UG SUGOD ////////////////////////////////////////// -->

<?php include '../../../../scripts/script-googlemaps.php'; ?>
<?php include '../../../../scripts/scripts-maps/maps.php';?>

<?php include '../../../../scripts/script-populationenable.php'; ?>

<?php include '../../../../scripts/script-dropdown-map-option.php'; ?>

<body onload="initMap()" >

            <div class="row" style="margin:0px; border:0px; padding:15px;">
               <div class="col-md-3">
                     <div class="panel panel-primary">
                        <div class="panel-heading">Map Options</div>
                             <div class="panel-body">

                                 <div class="form-group row">
                                    <label class="col-md-4 control-label">Province</label>
                                    <div class="col-md-7">
                                        <select class="form-control" name="province" id="province-list" onChange="getMunicipality(this.value);">
                                        <option value="">Select Province</option>
                                          <?php
                                          foreach($results as $country) {
                                          ?>
                                          <option value="<?php echo $country["id"]; ?>"><?php echo $country["name"]; ?></option>
                                          <?php
                                          }
                                          ?>
                                        </select>                          
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Municipality</label>
                                    <div class="col-md-7">
                                       <select class="form-control" name="municipality" id="municipality-list" onChange="getBarangay(this.value);">
                                       <option value="">Select Municipality</option>
                                        </select>                         
                                    </div>
                                 </div>
                                  <div class="form-group row">
                                    <label class="col-md-4 control-label">Barangay</label>
                                    <div class="col-md-7">
                                        <select class="form-control" name="barangay" id="barangay-list">
                                          <option value="">Select Barangay</option>
                                        </select>                        
                                    </div>
                                 </div>
                                 <div class="row">
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4"></div>
                                      <div class="col-sm-4">
                                              <button  onclick="enablePopulation()" type="button" class="btn btn-primary" btn-sm>GO</button>
                                      </div>
                                 </div>
                             </div>
                    </div>

                     <div class="panel panel-primary">
                             <div class="panel-body">                      
                                    <div class="form-group row">
                                      <label class="col-md-3   control-label">Toggle</label>
                                          <div class="col-md-9">
                                              <div class="btn-group btn-group-sm">
                                                   <button onclick="toggleHeatmap()" id="toggle-heatmap" type="button" class="btn btn-primary" disabled>Heatmap</button>
                                                   <button onclick="toggleBoundary()" id="toggle-boundary" type="button" class="btn btn-primary" disabled>Boundary</button> 
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
                                 <div id="map" style="width:100%;height:85%;"></div>
                                    
                            </div>
                     </div>
                </div>                


         </div>


        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">
              <div class="box collapsed-box">
                <div class="box-header">
                  <h3 class="box-title">List of Highlighted Household</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-plus"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="household-list" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>Household</th>
                        <th>Usage</th>
                        <th>Structure</th>
                      </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    <tfoot>
                      <tr>                        
                        <th>ID</th>
                        <th>Household</th>
                        <th>Usage</th>
                        <th>Structure</th>
                      </tr>
                    </tfoot>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
        </div>
      </section>
    
</body>

<!-- ////////////////////////////// DARI RA TAMAN KA EDIT ////////////////////////////////////////// -->



        <?php
            include '../../layouts/partials/footer.php';
        ?>
      </div><!-- /.content-wrapper /////////////////////////////////////////// -->

    </div><!-- ./wrapper -->
    <?php
        include '../../layouts/partials/scripts.php';
    ?>



</body>
</html>

