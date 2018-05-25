package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.ReplyMapper;

import lombok.extern.log4j.Log4j;

@CrossOrigin
@RestController
@RequestMapping("/replies/*")
@Log4j
public class ReplyController {
	
	
	private ReplyMapper mapper;
	
	public ReplyController(ReplyMapper mapper) {
		this.mapper = mapper;
	}
	

	@PostMapping("/new")
	public ResponseEntity<String> register(@RequestBody ReplyVO vo){
		
		
		mapper.create(vo);
		
		
		return new ResponseEntity<String>("success",HttpStatus.OK);
		
	}
	
	@GetMapping("/{rno}")
	public ResponseEntity<ReplyVO> read(@PathVariable("rno")Integer rno){
		
		
		return new ResponseEntity<ReplyVO>(mapper.read(rno), HttpStatus.OK);
		
		
	}
	
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> remove(
			@PathVariable("rno")Integer rno){
		
		String msg =  mapper.delete(rno) == 1?"success":"fail";
		
		return new ResponseEntity<String>(msg, HttpStatus.OK);
		
		
	}
	
	
	@PutMapping("/{rno}")
	public ResponseEntity<String> update(
			@PathVariable("rno")Integer rno, @RequestBody ReplyVO vo){
		
		vo.setRno(rno);
		
		String msg =  mapper.update(vo) == 1?"success":"fail";
		//�޼ҵ忡 @RequestBody�� ����� ���, ���� ��ü�� JSON�̳� XML�� ���� �˸��� ��������  ��ȯ
		return new ResponseEntity<String>(msg, HttpStatus.OK);
		
		
	}
	
	
	@GetMapping("/list/{bno}/{page}")
	public ResponseEntity<Map<String,Object>> list(@PathVariable("page")Integer page,
			@PathVariable("bno")Integer bno){
		
		ResponseEntity<Map<String,Object>> entity = null;
		
		log.info("cri: " + page);
		Criteria cri = new Criteria(page);
		
		try{Map<String,Object> map = new HashMap<String,Object>();
		List<ReplyVO> list = mapper.list(cri, bno);
		
		map.put("list", list);
		
		int replyCount = mapper.getTotal(bno);
		
		PageMaker pageMaker = new PageMaker(cri, replyCount);
		map.put("pageMaker", pageMaker);
		
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();

			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
