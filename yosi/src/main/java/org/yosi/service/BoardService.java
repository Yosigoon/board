package org.yosi.service;

import java.util.List;

import org.yosi.dto.Criteria;
import org.yosi.dto.BoardDTO;

public interface BoardService {
	
	public void register(BoardDTO dto);

	List<BoardDTO> list(Criteria cri);
	
	public BoardDTO get(Long tno);
	
	public void remove(Long tno);
	
	public void modify(BoardDTO dto);

	

}
