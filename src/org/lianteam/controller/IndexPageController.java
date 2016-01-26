package org.lianteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.service.DataCollectionImpl;
import org.lianteam.xmlBean.WebInfo;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexPageController {
	private ApplicationContext applicationcontext;//spring������
	public  IndexPageController() {
		//ͨ�����캯������ʼ��һ��spring������
		this.applicationcontext = new ClassPathXmlApplicationContext("spring/applicationContext.xml");//
		//ClassPathXmlApplicationContext
	}
	@RequestMapping("/index")//indexҳ��Ŀ���������handler
	public ModelAndView pageShow() throws Exception {
		ModelAndView modelAndView = new ModelAndView("index2");//�½�һ��ModelAndView���ڷ���
		Map<String,Object> map = new HashMap<>();//�½�һ��Map������װ��ҳ���е�����
		
		//��վ�Ļ�����Ϣ���������ơ���ַ����ϵ��ʽ��
		 XmlToBean xtb = new XmlToBean("webinfo.xml");	
		 map.put("webinfo", (WebInfo) xtb.getBeanFromXml(WebInfo.class));
		
		 //�����������ݷ���navigateList��
		map.put("navigateList", this.applicationcontext.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//org.lianteam.service.DataFromTableToView �����Զ�����
		
		map.putAll(new DataCollectionImpl().GetDataCollection(applicationcontext, "index", "webconfig.xml"));
		modelAndView.addAllObjects(map);
		return modelAndView;
	}

}
