package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;


public interface BoardMapper {
	
	public List<BoardVO> list(Criteria cri);

	public int getTotal(Criteria cri);
	
	public List<BoardVO> searchList(Criteria cri);
	
	public int register(BoardVO vo);
			
	public BoardVO read(int bno);

	public int remove(int bno);

	public int modify(BoardVO vo);
	
	public int updateReplyCnt(@Param("bno")Integer bno, @Param("amount")int amount);

	public int addAttach(String fullName);
	
	public void updateViewCnt(Integer bno);
	
	public List<String> getAttach(Integer bno);
	
	public void deleteAttach(Integer bno);
	
	public void replaceAttach(@Param("fullName")String fullName,@Param("bno")Integer bno);
	
	
}
