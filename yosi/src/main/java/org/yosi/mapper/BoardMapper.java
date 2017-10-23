package org.yosi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yosi.dto.Criteria;

import org.yosi.dto.BoardDTO;

public interface BoardMapper {
	
	@Insert("insert into tbl_Board (title, contents, writer) values(#{title}, #{contents}, #{writer})")
	public void insert(BoardDTO dto);
	
	@Select("select * from tbl_Board where tno = #{tno}")
	public BoardDTO fineById(Long tno);
	
	@Select("select * from tbl_Board where tno > 0 order by tno desc limit #{skip}, 10")
	public List<BoardDTO> listPage(Criteria cri);
	
	@Select("select count(*) from tbl_Board where tno > 0")
	public int getTotal(Criteria cri);
	
	@Delete("delete from tbl_board where tno = #{tno}")
	public void remove(Long tno);
	
	@Update("update tbl_board set title = #{title}, contents = #{contents} where tno = #{tno}")
	public void update(BoardDTO dto);

}
