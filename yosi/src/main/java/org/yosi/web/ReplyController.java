package org.yosi.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.yosi.dto.Criteria;
import org.yosi.dto.ReplyDTO;
import org.yosi.service.ReplyService;

import lombok.extern.java.Log;

@RestController
@RequestMapping("/reply/*")
@Log
public class ReplyController {

	@Autowired
	private ReplyService service;

	//댓글 리스트 가져오기
	@GetMapping("/list/{tno}")
	public List<ReplyDTO> list(@PathVariable("tno") Long tno) {
		ReplyDTO dto = new ReplyDTO();
		dto.setTno(tno);
		return service.listReply(tno);

	}
	
	//댓글 등록
	@PostMapping("/add")
	public void addReply(@RequestBody ReplyDTO dto) {
		service.register(dto);
	}
}
