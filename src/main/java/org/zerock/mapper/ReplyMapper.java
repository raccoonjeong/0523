package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {

	public int create(ReplyVO vo);
	
	public ReplyVO read(Integer rno);
	
	public int update(ReplyVO vo);
	
	
	
	public List<ReplyVO> list(
			@Param("cri") Criteria cri,
			@Param("bno") Integer bno);
	
	public int getTotal(Integer bno);
	
	public int getBno(Integer rno);

	public int updateup(ReplyVO vo);
	
	public int rereply(ReplyVO vo);
	
	
	public int delete(Integer rno);
	
	public int haveChild(Integer rno);
	
	public int deleteParentRply(Integer rno); 
	
	
}
