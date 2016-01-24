package org.lianteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.mapper.FocusImageMapper;
import org.lianteam.service.GetDataFromTableToView;
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
		ModelAndView modelAndView = new ModelAndView("index");//新建一个ModelAndView用于返回
		Map<String,Object> map = new HashMap<>();//新建一个Map，用来装载页面中的数据
		//String
		//DateFromTableToView dataFromTableToView = new this.applicationcontext.getBean("")
		//导航栏的数据放入navigateList中
		map.put("navigateList", this.applicationcontext.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//导航栏下的新闻通知 //如果做成通用模式，该数据应该从数据库中取出
		//ArchiveExtend用spring注入
		//将条目数放入archiveList中
		//map.put("archiveList", this.applicationcontext.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByLimit(this.applicationcontext.getBean("ArchiveExtend",ArchiveExtend.class)));
		
		//导航栏下焦点图部分
		//category_id = -1 时 为该部分的焦点图数据
		//将数据放入focusImageList中
		map.put("focusImageList", this.applicationcontext.getBean("focusImageMapper",FocusImageMapper.class).getFocusImageByCategory_idOrderBySortrank(-1));
		
		//研究方向模块
		//category_id = -2 时 为该部分的焦点图数据
		//将数据放入yanjiufangxiang中 //该位置先使用汉语拼音，等模块化后，应该填入表名和id
		map.put("yanjiufangxiang", this.applicationcontext.getBean("focusImageMapper",FocusImageMapper.class).getFocusImageByCategory_idOrderBySortrank(-2));
		

		//行业新闻模块
		//使用spring注入hangyexinwen
		//map.put("hangyexinwen", this.applicationcontext.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByLimit(this.applicationcontext.getBean("hangyexinwen",ArchiveExtend.class)));
		//org.lianteam.service.GetDataFromTableToView 数据自动绑定器
		
		map.putAll(new GetDataFromTableToView().GetDataByModuleInXml(applicationcontext, "index", "webconfig.xml"));
		modelAndView.addAllObjects(map);
		return modelAndView;
		
	}

}
