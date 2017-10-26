package org.yosi.mapper;

import org.apache.ibatis.annotations.Select;
import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;

public interface UserMapper {
	
	@Select("select uid, upw from tbl_user where uid = #{uid} and upw = #{upw}")
	public void login(LoginDTO dto);

}
