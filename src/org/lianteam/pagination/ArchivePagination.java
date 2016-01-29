package org.lianteam.pagination;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lianteam.mapper.ArchiveMapper;
import org.lianteam.mapper.CategoryMapper;
import org.lianteam.vo.PaginationCondition;
import org.lianteam.xmlBean.WebInfo;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ArchivePagination implements Pagination {

	private ApplicationContext ac;
	@Override
public Map<String, Object> getPagination(int id,int pageNow) throws Exception {
		
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
		CategoryMapper categoryMapper = ac.getBean("categoryMapper",CategoryMapper.class);
		
		//判断id的属性
		List<Integer> category_idList = new ArrayList<Integer>();
		if(categoryMapper.getPidById(id)==0)
		{
			//说明传入的为主类
			//由主类获得相应的子类
			category_idList = categoryMapper.getIntListByPid(id);
			//再把自身加入
			category_idList.add(id);
			
		}
		else{
			//传入的为子类
			//将单个id转为list
			category_idList.add(id);
		}
		//新建Map文件
		Map<String,Object> map = new HashMap<>();
		
		//导航栏的数据从数据库中拉取，并进行装入
		map.put("navigateList", ac.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//读取网站配置文件 webinfo.xml
		XmlToBean xtb = new XmlToBean("webinfo.xml");//在下次更新时，该位置应采用spring注入的方式	
		WebInfo webInfo = (WebInfo) xtb.getBeanFromXml(WebInfo.class);//读取
		
		//将WebInfo的信息装入，便于前端调用
		map.put("webinfo", webInfo);
		
		//pageSize  一页多少个元素 即 每页有多少条数据
		//pageSize的大小在webinfo.xml中进行配置，方便用户进行选择
		int pageSize = webInfo.getPagesize();
		
		//初始化查询条件
		PaginationCondition  paginationCondition = new PaginationCondition();
		paginationCondition.setPageNow(pageNow);
		paginationCondition.setPageSize(pageSize);
		paginationCondition.setCategory_idList(category_idList);
				
		
		
		//将pageNow装入
		map.put("pageNow", pageNow);
		
		ArchiveMapper achieveMapper = ac.getBean("archiveMapper",ArchiveMapper.class);
		
		//将archive List 装入
		map.put("pageList", achieveMapper.getArchiveListPagination(paginationCondition));
		
		//将id装入，用于回显
		map.put("pageId", id);
		
		//将总条目数装入
		int pageCount = achieveMapper.getTotalByPaginationCondition(paginationCondition);
		map.put("pageCount", pageCount);
		
		if(pageCount>0)//说明有数据
		{
			//计算分页的页数
			int total=1;
			if((pageCount%pageSize) == 0)
			{
				total = (pageCount/pageSize);
			}
			else
			{
				total = (pageCount/pageSize)+1;
			}
			map.put("total",total);
			
			//计算是否出现上一页或者下一页
			int prePage = 0;
			int nextPage = 1;
			if(pageNow <= 0)
			{
				pageNow = 1;
			}
			if(pageNow>1)
			{
				prePage = 1;
			}
			if(pageNow == 1)
			{
				prePage = 0;
				nextPage =1;
			}
			if(pageNow  >= total)
			{
				prePage = 1;
				nextPage = 0;
			}
			
			
			map.put("prePage",prePage);
			map.put("nextPage",nextPage);
			
			//页码算法
			int pageStart= 1;
			int pageEnd= 5;
			pageStart = ((pageNow/pageSize)*pageSize)+1;
			if(pageStart > pageSize)
			{
				pageStart = ((pageNow/pageSize)*pageSize);
			}
			
			if(pageStart>total)
			{
				pageStart = total;
			}
			
			pageEnd = pageStart+pageSize-1;
			if(pageEnd>total)
			{
				pageEnd = total;
			}
			map.put("pageStart", pageStart);
			map.put("pageEnd", pageEnd);
		}
		else//说明没有数据//全部重置0
		{
			int prePage = 0;
			int nextPage = 0;
			int pageStart = 0;
			int pageEnd = 0;
			int total = 0;
			map.put("total",total);
			map.put("prePage",prePage);
			map.put("nextPage",nextPage);
			map.put("pageStart", pageStart);
			map.put("pageEnd", pageEnd);	
		}		
		return map;
	}
	
	
}
