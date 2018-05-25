package org.zerock.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private Integer rno, bno;
	private String rcontent, replyer;
	private Date regdate, updatedate;
	
}
