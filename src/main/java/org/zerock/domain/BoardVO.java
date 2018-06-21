package org.zerock.domain;

import java.util.Date;
import lombok.Data;

@Data
public class BoardVO {
	
	private int bno,recnt,viewcnt;
	private String title,content,writer;
	private Date regdate,updatedate;
	private String[] files;
	
	private static final Long ADAY = 1000 * 60 * 60 * 24L;
	

	public boolean checkNew() {
		
		long gap = new Date().getTime() - regdate.getTime();
		
		return gap < ADAY;
		
	}

}
