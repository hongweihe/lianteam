package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.FocusImage;

public interface FocusImageMapper {
	public List<FocusImage> getFocusImageByCategory_idOrderBySortrank(int value) throws Exception;
}
