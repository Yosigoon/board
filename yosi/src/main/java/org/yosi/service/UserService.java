package org.yosi.service;

import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;

public interface UserService {
	
	public UserDTO login(LoginDTO dto);
	
	public void create(LoginDTO dto);

}
