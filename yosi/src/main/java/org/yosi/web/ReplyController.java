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
		
//		ReplyDTO dto = new ReplyDTO();
//		dto.setTno(tno);
		return service.listReply(tno);

	}
	
	//댓글 등록
	@PostMapping("/add")
	public void addReply(@RequestBody ReplyDTO dto) {
		log.info("컨트롤러 =========  " + dto.getTno());
		service.register(dto);
	}
	
	//댓글 삭제
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> removeReply(@PathVariable("rno") Integer rno, @RequestBody ReplyDTO dto){
		
		log.info("Remove RNO: " + rno);
		log.info("Remove TNO: " + dto.getTno());
		service.remove(dto);
		
		return new ResponseEntity<String>("removed", HttpStatus.OK);
	}
	
	//댓글 수정
	@PutMapping("/{rno}")
	public ResponseEntity<String> updateReply(
			@PathVariable("rno") Long rno, @RequestBody ReplyDTO dto){
		
		dto.setRno(rno);
		
		log.info("Update RNO: " + rno);
		
		service.update(dto);
		
		return new ResponseEntity<String>("update", HttpStatus.OK);
	}
}
