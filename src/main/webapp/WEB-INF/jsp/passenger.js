/**
 * 
 */

$(document).ready(function() {
	$("#addB").click(function() {

		$("#formadd").show();
		$("#dform").hide();
		$("#resultId").hide();
		$("#Upass").hide();
		$("#empF").hide();

	});

	$("#updateB").click(function() {
		$("#fieldId").removeAttr("disabled");
		$("#saveB").show();
		
	});

	
	$("#saveB").click(function() {
		
		$("#form2").submit();
		
	});
	
	$("#searchB").click(function() {
		$("#formadd").hide();
		$("#addB").hide();
		$("#deleteB").show();
		$("#updateB").show();
		$("#empS").show();
		$("#searchId").hide();
		$("#searchB").hide();
		$("#resultId").hide();
		$("#empF").hide();
		
	});

});