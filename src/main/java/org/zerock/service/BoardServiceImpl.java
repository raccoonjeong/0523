package org.zerock.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
	@Transactional
	public void register(BoardVO vo) {
		
		mapper.register(vo);

		String[] files = vo.getFiles();
		
		if(files==null) {return ;}
		
		for(String fileName :files) {
			mapper.addAttach(fileName);
		}
	}

	@Override
	public BoardVO read(int bno) {
	
		return mapper.read(bno);
	}

	@Override
	public int remove(int bno) {
		
		return mapper.remove(bno);
	}


	@Override
	public int modify(BoardVO vo) {

		return mapper.modify(vo);
	}

	@Override
	public int updateReplyCnt(Integer bno, int amount) {

		
		return mapper.updateReplyCnt(bno,amount);
		
	}

	@Override
	public void updateViewCnt(Integer bno) {
		 mapper.updateViewCnt(bno);
		
	}

	@Override
	public List<String> getAttach(Integer bno) {

		return mapper.getAttach(bno);
	}

	



	
}
