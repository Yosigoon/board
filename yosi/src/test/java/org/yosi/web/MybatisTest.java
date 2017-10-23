package org.yosi.web;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yosi.mapper.TimeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class MybatisTest {
	
	@Inject
    SqlSessionFactory factory;
	
	@Inject
	TimeMapper timeMapper;

    
    @Test
    public void test3() {
        System.out.println(factory);
       
    }
    
    @Test
    public void test4() {
        System.out.println(timeMapper.getTime());
    }
    


}
