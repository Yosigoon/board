package org.yosi.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {
	
	private Long rno;
	private String reply, replyer;
	private Date replydate;
	private Long tno;

}
