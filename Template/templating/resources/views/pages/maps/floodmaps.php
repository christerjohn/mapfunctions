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

<?php include '../../../../scripts/script-floodenable.php'; ?>

<?php include '../../../../scripts/script-floodmaps.php'; ?>


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
                                              <button  onclick="enable()" type="button" class="btn btn-primary" btn-sm>GO</button>
                                      </div>
                                 </div>
                             </div>
                    </div>

                     <div class="panel panel-primary">
                         <div class="panel-heading">Flood Map</div>
                             <div class="panel-body">
                                    <div class="form-group row">
                                      <label class="col-md-4 control-label">Toggle</label>
                                          <div class="col-md-7">
                                              <div class="btn-group btn-group-sm">
                                                   <button onclick="toggleBoundary()" type="button" class="btn btn-primary" id="boundary_toggle" disabled>Boundary</button> 
                                              </div>
                                           </div>
                                    </div>                      
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
                                      <label class="col-md-12 control-label">Highlight Household On</label>
                                      <label class="col-md-4 control-label">Level</label>
                                          <div class="col-md-7">
                                              <select class="form-control" id="highlight1" disabled>
                                                <option value = "0">None</option>
                                                 <?php 
                                                    while ($row = mysql_fetch_array($level))
                                                    {
                                                        echo "<option value=".$row[id].">Level ".$row[level]."</option>";
                                                    }
                                                  ?>  
                                              </select>                          
                                          </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4"></div>
                                        <div class="col-sm-4">
                                                <button  onclick="enableFloodMaps()" id="go2" type="button" class="btn btn-primary" btn-sm disabled>GO</button>
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
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Hover Data Table</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 4.0</td>
                        <td>Win 95+</td>
                        <td> 4</td>
                        <td>X</td>
                      </tr>
                      <tr>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 5.0</td>
                        <td>Win 95+</td>
                        <td>5</td>
                        <td>C</td>
                      </tr>
                      <tr>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 5.5</td>
                        <td>Win 95+</td>
                        <td>5.5</td>
                        <td>A</td>
                      </tr>
                      <tr>
                        <td>Trident</td>
                        <td>Internet
                          Explorer 6</td>
                        <td>Win 98+</td>
                        <td>6</td>
                        <td>A</td>
                      </tr>
                      <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 7</td>
                        <td>Win XP SP2+</td>
                        <td>7</td>
                        <td>A</td>
                      </tr>
                      <tr>
                        <td>Trident</td>
                        <td>AOL browser (AOL desktop)</td>
                        <td>Win XP</td>
                        <td>6</td>
                        <td>A</td>
                      </tr>
                      <tr>
                        <td>Gecko</td>
                        <td>Firefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.7</td>
                        <td>A</td>
                      </tr>
                    </tbody>
                    <tfoot>
                      <tr>
                        <th>Rendering engine</th>
                        <th>Browser</th>
                        <th>Platform(s)</th>
                        <th>Engine version</th>
                        <th>CSS grade</th>
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

