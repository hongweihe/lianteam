package org.lianteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.service.DataCollectionImpl;
import org.lianteam.xmlBean.WebInfo;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexPageController {
	private ApplicationContext applicationcontext;//spring代理器
	public  IndexPageController() {
		//通过构造函数，初始化一个spring代理器
		this.applicationcontext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");//
		//ClassPathXmlApplicationContext
	}
	@RequestMapping("/index")//index页面的控制器或者handler
	public ModelAndView pageShow() throws Exception {
		ModelAndView modelAndView = new ModelAndView("index2");//新建一个ModelAndView用于返回
		Map<String,Object> map = new HashMap<>();//新建一个Map，用来装载页面中的数据
		
		//网站的基础信息，例如名称、地址、联系方式等
		 XmlToBean xtb = new XmlToBean("webinfo.xml");	
		 map.put("webinfo", (WebInfo) xtb.getBeanFromXml(WebInfo.class));
		
		 //导航栏的数据放入navigateList中
		map.put("navigateList", this.applicationcontext.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//org.lianteam.service.DataFromTableToView 数据自动绑定器
		
		map.putAll(new DataCollectionImpl().GetDataCollection(applicationcontext, "index", "webconfig.xml"));
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

}
