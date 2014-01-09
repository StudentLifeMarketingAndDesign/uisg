$(window).load(function() {

	var $meetings = $(".main-content table");
	$meetings.attr('id', function (index) {
	    return 'meeting-' + index;
	});
	
	var $showMore = $(".main-content .showMore");
	$showMore.attr('id', function (index) {
		return 'showMore-' + index;
	});
	
	var general = $("#meeting-0 .table-page").size();
	
	var generalMore = 3

	if (general > 1) {
		$('#meeting-0 .table-page').hide();
		$('#meeting-0 .table-start').show();
		$('#showMore-0').append("<button type='button' class='page-button'>Show More...</button");
		$('.page-button').on("click", function() {
			$('#meeting-0 .table-page:lt(' + generalMore + ')').show("easing");
			generalMore++;
			if (generalMore > general) {
				$('#showMore-0').hide();
			}
		});
		
	}	
	
	var committee = $("#meeting-1 .table-page").size();
	
	var committeeMore = 3

	if (committee > 1) {
		$('#meeting-1 .table-page').hide();
		$('#meeting-1 .table-start').show();
		$('#showMore-1').append("<button type='button' class='page-button'>Show More...</button");
		$('.page-button').on("click", function() {
			$('#meeting-1 .table-page:lt(' + committeeMore + ')').show("easing");
			committeeMore++;
			if (committeeMore > committee) {
				$('#showMore-1').hide();
			}
		});
		
	}	
	
})
	



