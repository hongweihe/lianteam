package org.lianteam.controller;

import java.util.ArrayList;
import java.util.List;

import org.lianteam.pagination.ArchivePagination;
import org.lianteam.service.NavigateBar;
import org.lianteam.service.VerticalNavigation;
import org.lianteam.vo.WhereCondition;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListPageController {
	@RequestMapping("/list/{category_id}/{pageNow}")
	public ModelAndView pageShow(@PathVariable String category_id,@PathVariable int pageNow) throws Exception
	{
		ModelAndView m = new ModelAndView("list");
		//category_id 格式为{4,5,6,7}需要进行风格成 整数型的list
		List<Integer> category_idList = new ArrayList<Integer>();
		for(String tmp:category_id.split(","))
		{
			if(tmp == null || tmp == "" || tmp== " ")
			{
				
			}
			else
			{
				category_idList.add(Integer.parseInt(tmp.trim()));
			}
		}
		WhereCondition whereCondition = new WhereCondition();
		whereCondition.setCategory_idList(category_idList);
		whereCondition.setPageNow(pageNow);
		whereCondition.setPageSize(11);
		//Pagination pagination = new ArchivePagination();
		
		m.addAllObjects(new ArchivePagination().getPagination(whereCondition));
		
		m.addAllObjects(new NavigateBar().getNavigateBar(whereCondition.getCategory_idList()));
		
		m.addAllObjects(new VerticalNavigation().getVerticalNavigation(whereCondition.getCategory_idList()));
		return m;
		
	}
	
	
	

}
