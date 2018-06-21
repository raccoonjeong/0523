package org.zerock.service;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyDTO;
import org.zerock.domain.ReplyVO;

public interface ReplyService {
	
	public int create(ReplyVO vo);
	
	public ReplyVO read(Integer rno);
	
	public int update(ReplyVO vo);
	
	public ReplyDTO list(
			@Param("cri")Criteria cri,
			@Param("bno") Integer bno);
	
	public int rereply(ReplyVO vo);

	public int delete(Integer rno);
	
	public int haveChild(Integer rno);
	
	public int deleteParentReply(Integer rno);
	
}
