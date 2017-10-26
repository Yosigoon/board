package org.yosi.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.yosi.dto.UserDTO;
import org.yosi.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserMapper mapper;
	
	@Override
	public UserDTO login(String uid) {
		
		UserDTO dto = new UserDTO();
		
		dto.setUid(uid);
		dto.setUpw(uid);
		dto.setUname(uid);
		
		return dto;
	}

}
