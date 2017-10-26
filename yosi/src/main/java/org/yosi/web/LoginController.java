package org.yosi.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;

import lombok.extern.java.Log;

@Controller
@Log
public class LoginController {
	
	@GetMapping("/yosi/login")
	public void login() {
	}
	
	@PostMapping("/yosi/login")
	public void loginPost(LoginDTO dto, Model model) {
		
		log.info("post=================");
		
		UserDTO user = new UserDTO();
		if(user == null) {
			return;
		}
		user.setUid(dto.getUid());
		user.setUpw(dto.getUpw());
//		user.setUname("user:"+dto.getUid());
		
		model.addAttribute("userDTO", user);
	}
	
	
}
