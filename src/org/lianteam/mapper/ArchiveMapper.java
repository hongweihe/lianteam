package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Archive;
import org.lianteam.vo.ListViewCondition;
import org.lianteam.vo.PaginationCondition;

public interface ArchiveMapper {
	
	//在用  通过paginationCondition的条件查询条件 获得archive List
	public List<Archive> getArchiveListPagination(PaginationCondition paginationCondition) throws Exception;
	
	//通过paginationCondition的条件 获得总的条目数
	public int getTotalByPaginationCondition(PaginationCondition paginationCondition) throws Exception;
	
	//在view数据模块化的部分使用 通过ListView的条件 获得文章分类
	public List<Archive> getListByCategory_idAndLimit(ListViewCondition listViewCondition) throws Exception;
}
