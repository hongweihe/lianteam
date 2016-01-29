package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.FocusImage;
import org.lianteam.vo.ListViewCondition;

public interface FocusImageMapper {
	public List<FocusImage> getListByCategory_idAndLimit(ListViewCondition listViewCondition) throws Exception;
}
