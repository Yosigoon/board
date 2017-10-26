package org.yosi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yosi.dto.Criteria;
import org.yosi.dto.ReplyDTO;



public interface ReplyMapper {
	
	@Select("select * from tbl_reply_board where tno = #{tno}")
	public List<ReplyDTO> list(Long tno);
	
	@Insert("insert into tbl_reply_board (reply, replyer, tno) values (#{reply}, #{replyer}, #{tno})")
	public void create(ReplyDTO dto);
	
	@Delete("delete from tbl_reply_board where rno = #{rno}")
	public void delete(Long rno);
	
	@Update("update tbl_reply_board set reply = #{reply}, replyer = #{replyer} where rno = #{rno}")
	public void update(ReplyDTO dto);
	

}
