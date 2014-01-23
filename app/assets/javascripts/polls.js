var myTextExtraction = function(node)  
{  
    // extract data from markup and return it
    console.log(node)  
    return $(node.childNodes[1].childNodes[5]).text(); 
}
$(document).ready(function(){
	$('#close').click(function(){
		$("#notification").hide('slow');
	});
	$(".mws-table").tablesorter({ textExtraction: myTextExtraction })
	// $(".mws-table").tablesorter({textExtraction: myTextExtraction});
});