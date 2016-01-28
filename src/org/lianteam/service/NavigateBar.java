package org.lianteam.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.pojo.Category;
import org.lianteam.vo.NavBar;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class NavigateBar {
	private ApplicationContext ac;
	public Map<String,Object> getNavigateBar(List<Integer> category_idList) throws Exception
	{
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		CategoryMapper cm = ac.getBean("categoryMapper",CategoryMapper.class);
		
		Map<String,Object> map = new HashMap<String,Object>();
		
        List<NavBar> navBarList = new ArrayList<NavBar>();
		
		if(category_idList.size()>1)
		{
			NavBar navBar = new NavBar();
			navBar.setDisplay("综合信息");//显示名称
			navBar.setParam("index");//返回到主页
			navBarList.add(navBar);
		}
		else//只有一个category_id
		{
			int id = category_idList.get(0);
			Category category = cm.getCategoryById(id);
			for(String s:category.getPath().split(","))
			{
				if(s.equals("0"))
				{
					NavBar navBar = new NavBar();
					navBar.setDisplay("首页");
					navBar.setParam("/");
					navBarList.add(navBar);
				}
				else
				{
					NavBar navBar = new NavBar();
					Category temp = cm.getCategoryById(Integer.parseInt(s));
					navBar.setDisplay(temp.getName());
					navBar.setParam(Integer.toString(temp.getId()));
					navBarList.add(navBar);
				}
			}
		}
		map.put("navigateBar", navBarList);

		
		return map;
	}

}
