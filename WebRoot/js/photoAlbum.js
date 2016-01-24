// JavaScript Document
$(function(){
	//生活贴士动画函数
	var $srollImg=$(".scroll_pic_index li")
	var len=$srollImg.length;
	var adTimer=null;
	var index=0;
	var $content=$(".scroll_pic_content");
	var sWidth=$(".scroll_pic_content li").width();
	
	$srollImg.click(function(){
		index=$(this).index();
		showImg($content, index);
		showFrame($srollImg, index);
	}).eq(0).click();
	$(".scroll_pic_news").hover(function(){		
		if(adTimer){
			clearInterval(adTimer);
		}
	},function(){
		var time=5000;
		adTimer=setInterval(function(){
			showImg($content, index);
			showFrame($srollImg, index);
			index++;
			if(index==len){index=0;}
			//alert(index);
		}, time);
	}).trigger("mouseleave");
	
	$(".scroll_pic_news span.prev").click(function(){
		index = index ? index - 1 : len - 1;
		showImg($content, index);
		showFrame($srollImg, index);
	});
	$(".scroll_pic_news span.next").click(function(){
		index = index + 2 > len ? 0 : index + 1;
		showImg($content, index);
		showFrame($srollImg, index);
	});
	
	
	function showImg($content, index){
		var nowLeft=-index*sWidth;		
		$content.stop(true,false).animate({"left":nowLeft},300);
		       
	}
	function showFrame($content, index){
		var len = $content.length;
		var $now = $content.eq(index);		
		if(!$now.children('span').length) $now.prepend('<span></span>');
		$now.addClass("current").siblings().removeClass("current");
		if(index == 0){
			$content.parent().stop(true,true).animate({"left":0},300);
		}else if(index > 1 && index < len -1){
			$content.parent().stop(true,true).animate({"left":-($content.width()+parseInt($content.css("margin-right")))*(index-1)},300);
		}
	}
})
