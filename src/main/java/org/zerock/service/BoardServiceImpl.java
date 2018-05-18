package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
@Service
public class BoardServiceImpl implements BoardService{

	@Setter(onMethod_= {@Autowired})
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> list(Criteria cri) {
	
		return mapper.list(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
	
		return mapper.getTotal(cri);
	}

	@Override
	public int register(BoardVO vo) {
		
		return mapper.register(vo);
	}

	@Override
	public BoardVO read(int bno) {
	
		return mapper.read(bno);
	}

	

	

	
}
