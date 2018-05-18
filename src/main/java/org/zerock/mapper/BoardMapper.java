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
}
