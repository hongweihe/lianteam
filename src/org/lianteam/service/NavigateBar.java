package org.lianteam.service;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//通过id获得导航条
public class NavigateBar {
	private ApplicationContext ac;
	public Map<String,Object> getNavigateBar(int id) throws Exception
	{
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		Map<String,Object> map = new HashMap<>();
		//新建CategoryMapper
		CategoryMapper categoryMapper = ac.getBean("categoryMapper",CategoryMapper.class);
		
		//判断id的属性
		//id是否为主类（第一级）
		//如果为第一级，则显示名字，不再显示二级名字
		//如果为第二级，则需要根据pid或者获得第一级的名字和id
		//List<Integer> category_idList = new ArrayList<Integer>();
		if(categoryMapper.getPidById(id)==0)
		{
			//说明传入的为主类
			//只显示改类的名称为止
			map.put("FatherNavigateBar", categoryMapper.getCategoryById(id));
			map.put("ChildNavigateBar", null);
			
		}
		else
		{
			//传入的为子类
			//获得第一级
			
			map.put("ChildNavigateBar", categoryMapper.getCategoryById(id));
			map.put("FatherNavigateBar", categoryMapper.getPidCategoryById(id));
		}
		
		return map;
	}

}
