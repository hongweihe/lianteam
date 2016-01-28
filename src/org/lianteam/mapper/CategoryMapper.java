package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Category;
public interface CategoryMapper {
	//使用myBatis的Mapper实现方式
	public List<Category> getAllCategoryOrderBySortrank() throws Exception;
	public Category getOneCategoryByCategoryId(int category_id) throws Exception;
	public List<Category> getCategoryByCategoryList(List<Integer> category_idList) throws Exception;
	public List<Category> getSameFarherCategoryByCategroyList(List<Integer> list) throws Exception;
	public List<Category> getPidFromCategoryByCategoryList(List<Integer> category_idList) throws Exception;
	
	public List<Category> getCategoryByPidList(List<Integer> list) throws Exception;
	
	public Category getCategoryById(int id) throws Exception;
	
	public List<Category> getCategoryByIdList(List<Integer> list) throws Exception;
	
}
