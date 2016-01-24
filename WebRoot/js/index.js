// JavaScript Document
$(function(){
	//导航栏动作函数
	$(".head_nav li").hover(function(){
		$(this).addClass("hover")
			.children(".head_sub_nav").show();
	},function(){
		$(this).removeClass("hover")
			.children(".head_sub_nav").hide();
	});
	//首页主banner
	var $bannerBox = $(".main_banner"); //banner的容器
	var $bannerLabel = $(".banner_num");
	var $banner = $(".main_banner_ul"); //banner的ul
	var scrollTime = 5000; //切换间隔时间
	scrollBanner($bannerBox, $bannerLabel, $banner, scrollTime);
	//近期论文banner
	var $paperBox = $(".paper_pic");
	var $paperLabel = $(".paper_label");
	var $paperBanner = $(".paper_banner");
	scrollBanner($paperBox, $paperLabel, $paperBanner, scrollTime);
	function scrollBanner($bannerBox, $bannerLabel, $banner, scrollTime, slide) {		
		var sWidth = $bannerBox.outerWidth();
		var len = $banner.children('li').length;
		var $label = $bannerLabel.children('li');
		var labelLen=$label.length;
		var idx = 0;
		var timer;
		var ulWidth = sWidth * len;
		if ($banner.outerWidth() != ulWidth) {
			$banner.css("width", ulWidth);
		}
		if($bannerLabel.length > 0 && labelLen != len){
			var html='';
			$banner.children("li").each(function(){
			    var $a=$(this).find("a");
			    html+='<li></li>';
			});			
			$bannerLabel.html(html).children().eq(0).addClass("first").addClass("current");			
			var labelLiWidth=$bannerLabel.children('li').width();
			labelLen=$bannerLabel.children('li').length;		
			$bannerLabel.children().click(function(){
			    var labelIdx = $(this).index();
			    showLabel(labelIdx);
			    showBanner(labelIdx,slide);
			})
		}
		$bannerBox.find(".banner_arrow_left").click(function(){
			idx--;
			if (-1 == idx) {
				idx = len - 1;
			}
			showBanner(idx,slide);
			if($bannerLabel.length > 0){
					showLabel(idx);
				}
		});
		$bannerBox.find(".banner_arrow_right").click(function(){
			idx++;
			if (len == idx) {
				idx = 0;
			}
			showBanner(idx,slide);
			if($bannerLabel.length > 0){
					showLabel(idx);
				}
		});
		$bannerBox.mouseover(function() {
			clearInterval(timer);
		}).mouseout(function() {
			startTimer();
		}).trigger("mouseout");
		function showBanner(idx,slide) {
		    if(!!slide){
		        var nowLeft = -idx * sWidth;
                $banner.stop(true, true).animate({
                "left": nowLeft
            }, 300);
		    }else{
		        $banner.children("li").stop(true, true).eq(idx).fadeIn().siblings().fadeOut();
		    }
			
		}		
		function showLabel(idx){
			$bannerLabel.children("li").eq(idx).addClass("current")
			            .siblings().removeClass("current");
		}
		function startTimer() {
			timer = setInterval(function() {
				showBanner(idx,slide);
				if($bannerLabel.length > 0){
					showLabel(idx);
				}				
				idx++;
				if (idx == len) {
					idx = 0
				}
			}, scrollTime);
		}
	}
	//网站热点函数
	var $hotNewsUl = $("#hot_news_ul");
	var timer;
	$hotNewsUl.mouseover(function() {
			clearInterval(timer);
		}).mouseout(function() {
			timer = setInterval(function() {				
				$hotNewsUl.children("li").eq(0).animate({"margin-top":"-28px"},500,function(){
					$(this).appendTo($hotNewsUl).css("margin-top",0);
				});
			}, 5000);
		}).trigger("mouseout");
	//科研仪器
	var $instruUl = $(".instru_ul");
	var timer;
	$instruUl.mouseover(function() {
			clearInterval(timer);
		}).mouseout(function() {
			timer = setInterval(function() {				
				$instruUl.children("li").eq(0).animate({"margin-left":"-154px"},500,function(){
					$(this).appendTo($instruUl).css("margin-left",0);
				});
			}, 5000);
		}).trigger("mouseout");
	//动态设定研究内容中h3的padding，保证其垂直居中
	$(".research_area_txt .title").each(function(){
		$(this).css("padding",(190-$(this).height())/2 + "px 0");
	});
	//研究方向右侧标签动作函数
	var rTimer, $research_target=$('.research_area_target li'),rIdx = 0;	
	$("#research_area .div_content").hover(function(){
		clearInterval(rTimer)
	},function(){		
		rTimer = setInterval(function(){					
			showRearchArea($research_target,rIdx);
			rIdx = rIdx == 3? 0 : rIdx + 1;
		},5000);
	}).trigger("mouseleave");
	$research_target.mouseover(function(event){
		event.stopPropagation();
		rIdx = $(this).index();
		showRearchArea($research_target,rIdx);
	}).eq(0).trigger("mouseover");	
	function showRearchArea($target,idx){
		$target.eq(idx).addClass("hover").siblings(".hover").removeClass("hover");
		$(".research_area_txt li").eq(idx).show().siblings().hide();
		$(".research_area_left").removeClass(function(index,oldclass){
			var remove = [],arr = oldclass.split(" ");
			for(var i=0;i<arr.length;i++){
				if(arr[i].indexOf("showIdx")>-1){
					remove.push(arr[i]);
				}
			}
			return remove.join(" ");
		}).addClass("showIdx"+idx)
		.children("li").each(function(){
			var $this = $(this);
			$this.index() == 4 && $this[idx%2 ? "addClass" : "removeClass"]("even");
			$this.children("span.img").eq(idx).show().siblings().hide();
		});
	}
	//生活贴士动画函数
	var $srollImg=$(".scroll_pic_index li")
	var len=$srollImg.length;
	var adTimer=null;
	var index=0;
	var $content=$(".scroll_pic_content");
	var sWidth=$(".scroll_pic_news").width();
	
	$srollImg.mouseover(function(){
		index=$(this).index();
		showImg($content, index);
		showFrame($srollImg, index);
	}).eq(0).mouseover();
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
	
	function showImg($content, index){
		var nowLeft=-index*sWidth;		
		$content.stop(true,false).animate({"left":nowLeft},300);
		       
	}
	function showFrame($content, index){
		var len = $content.length;
		$content.eq(index).stop(true,true).prepend('<span></span>')
		        .siblings().children('span').remove();
		if(index == 0){
			$content.parent().animate({"left":0},300);
		}else if(index > 1 && index < len -1){
			$content.parent().animate({"left":-($content.width()+parseInt($content.css("margin-right")))*(index-1)},300);
		}
	}
})
