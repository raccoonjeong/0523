package org.zerock.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	
	public List<BoardVO> list(Criteria cri);

	public int getTotal(Criteria cri);

}
