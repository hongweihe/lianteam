package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Category;
public interface CategoryMapper {
	
	public Category getCategoryById(int id) throws Exception;
	
	//获取导航栏
	public List<Category> getAllCategoryOrderBySortrank() throws Exception;
	//
	public List<Category> getCategoryByIdList(List<Integer> list) throws Exception;
	
	//由id获得其相对应的pid
	public int getPidById(int id) throws Exception;
	
	//getCategoryListByPid(id)
	public List<Integer> getIntListByPid(int pid) throws Exception;
	
	//由id获得名字
	public String getNameById(int id) throws Exception;
	
	//由id获得显示名
	public String getDisplayById(int id) throws Exception;
	
	//由pid获得category
	public Category getPidCategoryById(int id) throws Exception;
	
	//由pid获得category List
	public List<Category> getCategoryListByPid(int pid) throws Exception;
	
	//由id获得同类的category list
	public List<Category> getSomePidCategoryListById(int id) throws Exception;
	 
	
}
