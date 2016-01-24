// JavaScript Document

$(function(){//焦点图函数
	var $banner=$("#main_banner")               //此处修改焦点图容器id
	var $banner_ul=$banner.children("ul");
	var pic_num=$banner_ul.length;             //获取焦点图图片个数
	var index=0;
	var adTimer;
	//向焦点图中添加标记块
	var $span_content;
	for(i=0; i<pic_num;i++){
		$span_content += "<li></li>"
	}
	
});
	
