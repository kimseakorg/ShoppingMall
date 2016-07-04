// JavaScript Document
$(document).ready(function(){
 	var t = true;
	$("#sub-menu-button").on('click',function(){
		if(t ==true){
			$("#sub-menu").stop();
			$("#sub-menu").animate({left:'60'});
			t = false;
		}else
		if(t == false){
			
			$("#sub-menu").animate({left:'-60'});
			t =true;
			 
			}
		});
    	

});