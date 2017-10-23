package org.yosi.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	
	private Long tno;
	private String title;
	private String contents;
	private String writer;
	private Date regdate;
	private Integer viewcnt;

}
