package org.lianteam.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.pojo.Category;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class VerticalNavigation {
	private ApplicationContext ac;
	public Map<String,Object> getVerticalNavigation(List<Integer> category_idList) throws Exception
	{
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		Map<String,Object> map = new HashMap<String,Object>();
		CategoryMapper cm = ac.getBean("categoryMapper",CategoryMapper.class);
		List<Category> categoryList = cm.getCategoryByIdList(category_idList);
		List<Integer> list = new ArrayList<Integer>();
		String tmp = "0";
		for(Category category : categoryList)
		{
			if(tmp.equals(category.getPath().split(",")[1]))
			{
				
			}
			else
			{
				tmp = (category.getPath().split(",")[1]);
				list.add(Integer.parseInt(tmp));
			}
		}
		map.put("pCategoryList",cm.getCategoryByIdList(list));
		map.put("cCategoryList",cm.getCategoryByPidList(list));
		
		return map;
	}

}
