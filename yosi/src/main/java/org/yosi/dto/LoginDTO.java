package org.yosi.dto;

import lombok.Data;

@Data
public class LoginDTO {
	
	private String uid, upw, uname;
	private boolean auto;
}
