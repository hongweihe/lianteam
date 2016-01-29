package org.lianteam.controller;

import java.util.regex.Pattern;

import org.lianteam.pagination.ArchivePagination;
import org.lianteam.service.NavigateBar;
import org.lianteam.service.VerticalNavigation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListPageController {
	@RequestMapping("/list/{uid}/{upageNow}")
	public ModelAndView pageShow(@PathVariable String uid,@PathVariable String upageNow) throws Exception
	{
		//判断id和pageNow对应的是否为数字
		//此处采用正则表达式
		int id;
		int pageNow;
		Pattern pattern = Pattern.compile("[0-9]*"); 
		 if(pattern.matcher(uid).matches() && pattern.matcher(upageNow).matches())
		 {
			 id = Integer.parseInt(uid);
			 pageNow = Integer.parseInt(upageNow);
		 }
		 else
		 {
			 return new ModelAndView("404");//页面未找到
		 }
		 if(id<=0 || pageNow<=0)//id和pageNow都是大于零的数
		 {
			 return new ModelAndView("404");//页面未找到
		 }
		 //加载新闻列表
		// Map<String,Object> map = new HashMap<String,Object>();
		 //map.put("pageList", new ArchivePagination().getPagination(id, pageNow));
		 
			 
		 ModelAndView m = new ModelAndView("list");
		 //文章分页
		 m.addAllObjects(new ArchivePagination().getPagination(id, pageNow));
		 
		 //水平导航Bar
		 m.addAllObjects(new NavigateBar().getNavigateBar(id));
		 
		 //垂直导航栏
		 m.addAllObjects(new VerticalNavigation().getVerticalNavigation(id));
		return m;
	}
	
	
	

}
