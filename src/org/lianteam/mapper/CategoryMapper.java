package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Category;
public interface CategoryMapper {
	//ʹ��myBatis��Mapperʵ�ַ�ʽ
	public List<Category> getAllCategoryOrderBySortrank() throws Exception;
	
}
