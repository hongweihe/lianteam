package org.lianteam.controller;

import java.util.HashMap;
import java.util.Map;

import org.lianteam.mapper.CategoryMapper;
import org.lianteam.mapper.FocusImageMapper;
import org.lianteam.service.GetDataFromTableToView;
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
		ModelAndView modelAndView = new ModelAndView("index");//�½�һ��ModelAndView���ڷ���
		Map<String,Object> map = new HashMap<>();//�½�һ��Map������װ��ҳ���е�����
		//String
		//DateFromTableToView dataFromTableToView = new this.applicationcontext.getBean("")
		//�����������ݷ���navigateList��
		map.put("navigateList", this.applicationcontext.getBean("categoryMapper",CategoryMapper.class).getAllCategoryOrderBySortrank());
		
		//�������µ�����֪ͨ //�������ͨ��ģʽ��������Ӧ�ô����ݿ���ȡ��
		//ArchiveExtend��springע��
		//����Ŀ������archiveList��
		//map.put("archiveList", this.applicationcontext.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByLimit(this.applicationcontext.getBean("ArchiveExtend",ArchiveExtend.class)));
		
		//�������½���ͼ����
		//category_id = -1 ʱ Ϊ�ò��ֵĽ���ͼ����
		//�����ݷ���focusImageList��
		map.put("focusImageList", this.applicationcontext.getBean("focusImageMapper",FocusImageMapper.class).getFocusImageByCategory_idOrderBySortrank(-1));
		
		//�о�����ģ��
		//category_id = -2 ʱ Ϊ�ò��ֵĽ���ͼ����
		//�����ݷ���yanjiufangxiang�� //��λ����ʹ�ú���ƴ������ģ�黯��Ӧ�����������id
		map.put("yanjiufangxiang", this.applicationcontext.getBean("focusImageMapper",FocusImageMapper.class).getFocusImageByCategory_idOrderBySortrank(-2));
		

		//��ҵ����ģ��
		//ʹ��springע��hangyexinwen
		//map.put("hangyexinwen", this.applicationcontext.getBean("archiveMapper",ArchiveMapper.class).getArchiveByCategory_idByLimit(this.applicationcontext.getBean("hangyexinwen",ArchiveExtend.class)));
		//org.lianteam.service.GetDataFromTableToView �����Զ�����
		
		map.putAll(new GetDataFromTableToView().GetDataByModuleInXml(applicationcontext, "index", "webconfig.xml"));
		modelAndView.addAllObjects(map);
		return modelAndView;
		
	}

}
