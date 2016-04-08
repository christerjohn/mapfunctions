<script>
function getMunicipality(val) {
	$.ajax({
	type: "POST",
	url: "../../../../scripts/get-municipality.php",
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
	url: "../../../../scripts/get-barangay.php",
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