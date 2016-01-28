package org.lianteam.junit;
import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.lianteam.mapper.CategoryMapper;
import org.lianteam.pojo.Category;
import org.lianteam.service.NavigateBar;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CategoryMapperTest {
	private ApplicationContext ac;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		ac = new ClassPathXmlApplicationContext("spring/applicationContext.xml");
	}
	

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testGetPidFromCategoryByCategoryList() throws BeansException, Exception {
		//fail("Not yet implemented");
		List<Integer> list = new ArrayList<Integer>();
		list.add(17);
		list.add(25);
		List<Category> categoryList = ac.getBean("categoryMapper",CategoryMapper.class).getPidFromCategoryByCategoryList(list);
		for(Category category:categoryList)
		{
			System.out.println(category.getName());
		}
	}

	@Test
	public void testGetIdFromCategoryByPidList() throws BeansException, Exception {
		//fail("Not yet implemented");
		List<Integer> list = new ArrayList<Integer>();
		list.add(23);
		//list.add(25);
		//list.add(17);
		//list.add(18);
		//VerticalNavigation vn = new VerticalNavigation();
		//vn.getVerticalNavigation(list);
		NavigateBar nb = new NavigateBar();
		nb.getNavigateBar(list);
	}
	
}
