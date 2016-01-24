package org.lianteam.xmlBean;

import java.io.File;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class XmlToBean {//将来利用spring初入到其他类中
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
			this.path =  this.getClass().getClassLoader().getResource("").getPath();//获取类所在路径
		}
		if(this.xmlFile==null || this.xmlFile=="")
		{
			this.xmlFile="webconfig.xml";
		}
		
		File xmlFile = new File(this.path+this.xmlFile);//读取文件
		JAXBContext context = JAXBContext.newInstance(clazz);//建立类的上下文
		Unmarshaller unm = context.createUnmarshaller();//建立Unmarshaller对象
		return (Object)unm.unmarshal(xmlFile);//返回Object对象
		/*
		 * Object 是一个对象
		 * 实际上应该为一个Objects 对象 里边 包含了 List<Object> 成员变量
		 * public Pages {
		 * 	private List<Page> pageList
		 * }
		 */
	}
}
