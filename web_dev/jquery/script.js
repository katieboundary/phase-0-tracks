$(function(){
    $("#melt").mouseout(function(){
        $("#picture").fadeOut("slow");
    });
});

$(function(){
	$("#fun").mouseout(function(){
		$("#facts").animate({
            opacity: '0.5',
		})

	});
});

