var myTextExtraction = function(node)  
{  
    // extract data from markup and return it  
    return $(node.childNodes[1].childNodes[5]).text(); 
}
$(document).ready(function(){
	$('#close').click(function(){
		$("#notification").hide('slow');
	});
	$(".mws-table").tablesorter({headers: { 0: { textExtraction: myTextExtraction } }})
	// $(".mws-table").tablesorter({textExtraction: myTextExtraction});
});