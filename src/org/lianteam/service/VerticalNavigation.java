package org.lianteam.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
//竖直导航栏
public class VerticalNavigation {
	private ApplicationContext ac;
	public Map<String,Object> getVerticalNavigation(int id) throws Exception
	{
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		Map<String,Object> map = new HashMap<String,Object>();
		CategoryMapper categoryMapper = ac.getBean("categoryMapper",CategoryMapper.class);
		
		//判断id的属性
		//id是否为主类（第一级）
		//List<Integer> category_idList = new ArrayList<Integer>();
		if(categoryMapper.getPidById(id)==0)
		{
			//说明传入的为主类
			map.put("VerticalNavigation", categoryMapper.getCategoryListByPid(id));
			map.put("VerticalNavigation_current", null);
			
		}
		else
		{
			//传入的为子类
			map.put("VerticalNavigation", categoryMapper.getSomePidCategoryListById(id));
			map.put("VerticalNavigation_current", id);
		}
		
		return map;
	}

}
