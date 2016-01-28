package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Archive;
import org.lianteam.vo.WhereCondition;
public interface ArchiveMapper {
	public List<Archive> getArchiveByCategory_idByIdByLimit(WhereCondition whereCondition) throws Exception;
	public List<Archive> getArchiveListPagination(WhereCondition whereCondition) throws Exception;
	public int getTotalByCategory_id(WhereCondition whereCondition) throws Exception;
}
