package org.lianteam.mapper;

import java.util.List;

import org.lianteam.pojo.WebConfig;

public interface WebConfigMapper {
	public List<WebConfig> getWebConfigByPageName(String pageName) throws Exception;
}
