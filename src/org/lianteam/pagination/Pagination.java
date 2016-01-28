package org.lianteam.pagination;

import java.util.Map;

import org.lianteam.vo.WhereCondition;

public interface Pagination {
	public Map<String,Object> getPagination(WhereCondition whereCondition) throws Exception;

}
