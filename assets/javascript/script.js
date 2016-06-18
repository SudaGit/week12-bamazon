$(document).on('ready', function(){

	$('#search').on('focus', function(){
		$('.search-cover').addClass('no-height');
	});

	$('#search').on('blur', function(){
		$('.search-cover').removeClass('no-height');
	});

});