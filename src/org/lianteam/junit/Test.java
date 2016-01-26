package org.lianteam.junit;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.lianteam.xmlBean.WebInfo;
import org.lianteam.xmlBean.XmlToBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@org.junit.Test
	public void test() throws Exception {
		//fail("Not yet implemented");
		XmlToBean xtb = new XmlToBean("webinfo.xml");
		WebInfo wi =  (WebInfo)xtb.getBeanFromXml(WebInfo.class);
	    System.out.println(wi);
		
	
	}

}
