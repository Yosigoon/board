package org.yosi.web;

import javax.inject.Inject;

import org.yosi.dto.Criteria;
import org.yosi.dto.BoardDTO;
import org.yosi.service.BoardService;
import org.junit.internal.ComparisonCriteria;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/yosi/*")
@Log
public class BoardController {
	
	@Inject
	private BoardService service;
	
	@GetMapping("/index")
	public void index() {
		
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri") Criteria cri, Model model) {
		model.addAttribute("list", service.list(cri));
		
	}
	
	@GetMapping("/register")
	public void registerGet(@ModelAttribute("cri") Criteria cri) {
		
	}
	
	@PostMapping("/register")
	public String register(BoardDTO dto, RedirectAttributes rttr) {
		log.info("ют╥б DTO: "+dto);
		
		service.register(dto);
		rttr.addFlashAttribute("result", "success");
		return "redirect:/yosi/list";
	}
	
	@GetMapping("/view")
	public void view(BoardDTO dto, Model model, @ModelAttribute("cri") Criteria cri) {
		model.addAttribute("board", service.get(dto.getTno()));
	}
	
	@PostMapping("/remove")
	public String remove(BoardDTO dto, RedirectAttributes rttr) {
		service.remove(dto.getTno());
		rttr.addFlashAttribute("result", "delsuccess");
		
		return "redirect:/yosi/list";
	}
	
	@GetMapping("/modify")
	public void modify(BoardDTO dto, @ModelAttribute("cri") Criteria cri, Model model) {
		view(dto, model, cri);
	}
	
	@PostMapping("/modify")
	public String modifyPost(BoardDTO dto, Criteria cri, RedirectAttributes rttr) {
		service.modify(dto);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("tno", dto.getTno());
		rttr.addFlashAttribute("result", "modsuccess");
		return "redirect:/yosi/view";
	}
}
