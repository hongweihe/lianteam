package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.Paper;
import org.lianteam.vo.ListViewCondition;

public interface PaperMapper {
	
	public List<Paper> getListByCategory_idAndLimit(ListViewCondition listViewCondition)throws Exception;
}
