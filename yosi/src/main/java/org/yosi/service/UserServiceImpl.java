package org.yosi.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;
import org.yosi.mapper.UserMapper;

import lombok.extern.java.Log;

@Service
@Log
public class UserServiceImpl implements UserService {

	@Inject
	private UserMapper mapper;
	
	@Override
	public UserDTO login(LoginDTO dto) {
		
		log.info("service Impl: " + dto);
		return mapper.findByID(dto);
	}
	
	@Override
	public void create(LoginDTO dto) {
		mapper.createUser(dto);
		return;
	}
		

}
