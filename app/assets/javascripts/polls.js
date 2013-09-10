$(document).ready(function(){
	$('#close').click(function(){
		$("#notification").hide('slow');
	});
	$(".mws-table").tablesorter({sortList: [[0,0], [1,0]]});
});