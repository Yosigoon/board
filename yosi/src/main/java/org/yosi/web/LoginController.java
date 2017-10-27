package org.yosi.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;
import org.yosi.service.UserService;

import lombok.extern.java.Log;

@Controller
@Log
public class LoginController {
	
	@Autowired
	private UserService service;
	
	@GetMapping("/yosi/login")
	public void login() {
	}
	
	@PostMapping("/yosi/login")
	public void loginPost(LoginDTO dto, Model model) {
		
		log.info("post...............");
		
		UserDTO user = new UserDTO();
		
		user.setUid(dto.getUid());
		user.setUpw(dto.getUpw());
		user.setUname("user:"+dto.getUid());
		service.login(dto);
		
		log.info("DB: " +service.login(dto));
		
		log.info("Sign Up : " + dto.getUname());
		if(dto.getUname() != null) {
			service.create(dto);
			model.addAttribute("userDTO", dto);
		}else {
			
			model.addAttribute("userDTO", service.login(dto));
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
    	log.info("logout.....................");
    	
    	Object obj = session.getAttribute("userDTO");

   	  	if (obj != null) {
   	  		
   	  		session.removeAttribute("userDTO");
   	  		session.invalidate();
	   	  
   	  		   	  		
	   	} 

   	  	return "redirect:/yosi/login";
    	
    }
	
}
