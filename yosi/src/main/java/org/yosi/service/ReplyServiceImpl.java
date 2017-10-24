package org.yosi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.yosi.dto.Criteria;
import org.yosi.dto.ReplyDTO;
import org.yosi.mapper.BoardMapper;
import org.yosi.mapper.ReplyMapper;

import lombok.extern.java.Log;

@Transactional
@Service
@Log
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper mapper;
	
	@Autowired
	private BoardMapper boardmapper;
	
	@Override
	public List<ReplyDTO> listReply(Long tno) {
		return mapper.list(tno);
	}
	@Override
	public void register(ReplyDTO dto) {
		
		mapper.create(dto);
		boardmapper.updateReplyCnt(dto.getTno());

	}
	

}
