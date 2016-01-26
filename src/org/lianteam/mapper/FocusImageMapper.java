package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.FocusImage;
import org.lianteam.vo.WhereCondition;

public interface FocusImageMapper {
	public List<FocusImage> getFocusImageByCategory_idOrderBySortrank(WhereCondition whereCondition) throws Exception;
}
