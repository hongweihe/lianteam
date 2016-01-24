package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Category;
public interface CategoryMapper {
	//使用myBatis的Mapper实现方式
	public List<Category> getAllCategoryOrderBySortrank() throws Exception;
	
}
