<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$query ="SELECT * FROM provinces";
$results = $db_handle->runQuery($query);
?>
<html>
<head>
<TITLE>Dependent DropDown List</TITLE>
<head>
<style>
body{width:610px;}
.frmDronpDown {border: 1px solid #F0F0F0;background-color:#C8EEFD;margin: 2px 0px;padding:40px;}
.demoInputBox {padding: 10px;border: #F0F0F0 1px solid;border-radius: 4px;background-color: #FFF;width: 50%;}
.row{padding-bottom:15px;}
</style>
<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script>
function getMunicipality(val) {
	$.ajax({
	type: "POST",
	url: "get_municipality.php",
	data:'province_id='+val,
	success: function(data){
		$("#municipality-list").html(data);
		$("#barangay-list").trigger("change"); 
	}
	});
}

function getBarangay(val) {
	$.ajax({
	type: "POST",
	url: "get_barangay.php",
	data:'municipality_id='+val,
	success: function(data){
		$("#barangay-list").html(data);
	}
	});
}

function selectProvince(val) {
$("#search-box").val(val);
$("#suggesstion-box").hide();
}
</script>
</head>
<body>
<div class="frmDronpDown">
<div class="row">
<label>Country:</label><br/>
<select name="province" id="province-list" class="demoInputBox" onChange="getMunicipality(this.value);">
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
<div class="row">
<label>State:</label><br/>
<select name="municipality" id="municipality-list" class="demoInputBox" onChange="getBarangay(this.value);">
<option value="">Select Municipality</option>
</select>
</div>
<div class="row">
<label>City:</label><br/>
<select name="barangay" id="barangay-list" class="demoInputBox">
<option value="">Select Barangay</option>
</select>
</div>
</div>
</body>
</html>