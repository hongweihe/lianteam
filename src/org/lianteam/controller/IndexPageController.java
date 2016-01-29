package org.lianteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.service.ListViewFromTable;
import org.lianteam.xmlBean.WebInfo;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexPageController {
	private ApplicationContext applicationcontext;//
	public  IndexPageController() {
		
		this.applicationcontext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");//
		
	}
	@RequestMapping("/index")//
	public ModelAndView pageShow() throws Exception {
		ModelAndView modelAndView = new ModelAndView("index2");
		Map<String,Object> map = new HashMap<>();
		
		
		 XmlToBean xtb = new XmlToBean("webinfo.xml");	
		 map.put("webinfo", (WebInfo) xtb.getBeanFromXml(WebInfo.class));
		
		//导航栏
		map.put("navigateList", this.applicationcontext.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//内容页
		map.putAll(new ListViewFromTable().getListViewFromTable("index"));
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

}
