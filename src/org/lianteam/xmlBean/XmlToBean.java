package org.lianteam.xmlBean;

import java.io.File;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class XmlToBean {
	private String path;
	private String xmlFile;
	//getter....setter...
	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	public String getXmlFile() {
		return xmlFile;
	}


	public void setXmlFile(String xmlFile) {
		this.xmlFile = xmlFile;
	}
	public XmlToBean(String xmlFile)
	{
		this.path = this.getClass().getClassLoader().getResource("").getPath();
		//this.xmlFile = "webconfig.xml";
		this.xmlFile = xmlFile;
	}

	public Object getBeanFromXml(Class<?> clazz) throws JAXBException
	{	
		if(this.path==null || this.path=="")
		{
			this.path =  this.getClass().getClassLoader().getResource("").getPath();//��ȡ������·��
		}
		if(this.xmlFile==null || this.xmlFile=="")
		{
			this.xmlFile="webconfig.xml";
		}
		
		File xmlFile = new File(this.path+this.xmlFile);//��ȡ�ļ�
		JAXBContext context = JAXBContext.newInstance(clazz);//�������������
		Unmarshaller unm = context.createUnmarshaller();//����Unmarshaller����
		return (Object)unm.unmarshal(xmlFile);//����Object����
		/*
		 * Object ��һ������
		 * ʵ����Ӧ��Ϊһ��Objects ���� ��� ������ List<Object> ��Ա����
		 * public Pages {
		 * 	private List<Page> pageList
		 * }
		 */
	}
}
