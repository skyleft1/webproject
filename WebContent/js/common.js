$(function(){
	$('#header').load('guide/header.jsp');
	$('#footer').load('guide/footer.jsp');
})




$(document).ready(function(){
	$(document).on('mouseenter', '.menu', function(){
		$('.menu >li>ul').show()
	});
	$(document).on('mouseleave', '.menu', function(){
		$('.menu >li>ul').hide();
	})



//	$('.nav ul').mouseenter(function(){
//		$(this).children('li').css('display','block')
//		console.log("aaa2")
//	});


//$('.nav').mouseEnter(function(e){
//	$('.nav ul').slideDown();
//})









});