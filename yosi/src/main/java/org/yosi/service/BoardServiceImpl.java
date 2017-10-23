package org.yosi.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yosi.dto.Criteria;
import org.yosi.dto.BoardDTO;
import org.yosi.mapper.BoardMapper;

import lombok.extern.java.Log;

@Service
@Log
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardMapper mapper;
	
	@Override
	public void register(BoardDTO dto) {
		log.info("service register: " + dto);
		mapper.insert(dto);
	}
	
	@Override
	public List<BoardDTO> list(Criteria cri){
		cri.setTotal(mapper.getTotal(cri));
		return mapper.listPage(cri);
	}
	
	@Override
	public BoardDTO get(Long tno) {
		log.info("service get: " + tno);
		return mapper.fineById(tno);
	}
	
	@Override
	public void remove(Long tno) {
		mapper.remove(tno);
	}
	
	@Override
	public void modify(BoardDTO dto) {
		mapper.update(dto);
	}

}
