package org.yosi.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.yosi.dto.BoardDTO;
import org.yosi.mapper.BoardMapper;

import lombok.extern.java.Log;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
@Log
public class BoardTest {

	@Inject
	private BoardMapper mapper;

	@Test
	public void test5() {
		log.info(""+ mapper);
		BoardDTO dto = new BoardDTO();
		dto.setTitle("Test Title");
		dto.setWriter("Test Writer");
		
		mapper.insert(dto);
	}
	
	@Test
	public void test6() {
		//tno = 4인 행을 읽어온다.
		log.info(""+mapper.fineById(4L));
	}
}

