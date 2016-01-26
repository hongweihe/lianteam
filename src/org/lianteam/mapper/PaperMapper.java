package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Paper;
import org.lianteam.vo.WhereCondition;

public interface PaperMapper {
	public List<Paper> getPaperByCategory_idByIdByLimit(WhereCondition whereCondition) throws Exception;
}
