package org.lianteam.pagination;

import java.util.Map;

public interface Pagination {
	public Map<String,Object> getPagination(int id,int pageNow) throws Exception;

}
