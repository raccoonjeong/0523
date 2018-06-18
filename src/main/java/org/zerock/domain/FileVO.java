package org.zerock.domain;

import java.util.Date;

import lombok.Data;
@Data
public class FileVO {
	
	private String uuid, fileName;
	private int bno;
	private Date regdate;

}
