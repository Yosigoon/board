package org.yosi.service;

import java.util.List;

import org.yosi.dto.Criteria;
import org.yosi.dto.ReplyDTO;

public interface ReplyService {
	
	public List<ReplyDTO> listReply(Long tno);
	
	public void register(ReplyDTO dto);
	
	public void remove(ReplyDTO dto);
	
	public void update(ReplyDTO dto);

	

	

	

	

	
}
