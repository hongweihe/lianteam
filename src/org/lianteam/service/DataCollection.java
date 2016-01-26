package org.lianteam.service;

import java.util.Map;

import org.springframework.context.ApplicationContext;

public interface DataCollection {
	public Map<String,Object> GetDataCollection(ApplicationContext ac,String pageName,String xmlFile) throws Exception;
}
