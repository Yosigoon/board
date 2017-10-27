package org.yosi.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.yosi.dto.LoginDTO;
import org.yosi.dto.UserDTO;

public interface UserMapper {
	
	@Select("select * from tbl_user where uid = #{uid} and upw = #{upw}")
	public UserDTO findByID(LoginDTO dto);
	
	@Insert("insert into tbl_user (uid, upw, uname) values (#{uid}, #{upw}, #{uname})")
	public void createUser(LoginDTO dto);

}
