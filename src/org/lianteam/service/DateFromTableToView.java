package org.lianteam.service;

import java.util.Map;

import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;

public interface DateFromTableToView {
	public Map<String,Object> GetDataFromTableToView(ApplicationContext ac,String pageName,XmlToBean xtb) throws Exception;
}
