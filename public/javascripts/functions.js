// JavaScript Document
$(document).ready(function(){
	
	Cufon.replace('#nav>ul>li',{
	hoverables: { li: true }, 
	hover:true			  
	});
	Cufon.replace('h1',{
	hover:true			  
	});
	Cufon.replace('h2',{
	hover:true
	
	});
	Cufon.replace('h3',{
	hover:true

	});
	Cufon.replace('h4',{
	hover:true			  
	});
	
	//Accordion Function Written by Chimps Design
$(".slideaccor") .hide();
$(".slideaccor:first") .show();
$(".hdaccor") .click (function () {
$(".slideaccor") .slideUp("normal"),
$(this) .next()  .slideDown("normal");
return false;					
});

$(".detailprogram") .hide();
$(".study_programs li") .hover (function () {
$(".detailprogram") .slideUp("normal"),
$(this) .find(".detailprogram") .slideDown("normal");					

},
function(){
	$(this) .find(".detailprogram") .slideUp("normal");
	}
);
	$(".box_spotlight:last") .css ( "margin", "0px"),
	$(".box_spotlight:last") .css ( "border", "none");
	
	$(".blog_detail p:last") .css ( "padding-bottom", "10px");
	
	$ (".accor_content") .hide ();
	$ (".accor_content:first") .show ();
	$ (".accor_heading:first") .addClass ('downToggle');
	$ (".accor_heading") .click (function () {
	$ (".accor_heading")  .removeClass ('downToggle'),
	$ (this) .addClass ("downToggle"),
	$ (".accor_content") .slideUp ("normal"),
	$ (this) .next () .slideDown ("normal");
	
	});
	$(document).ready(function(){
$("a[rel='galleryimages']").colorbox({slideshow:true});
$(".galleryvideo").colorbox({iframe:true, innerWidth:840, innerHeight:560});
});

});
