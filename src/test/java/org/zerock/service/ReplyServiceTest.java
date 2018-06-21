package org.zerock.service;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyServiceTest {


	@Setter(onMethod_= {@Autowired})
	private ReplyService service;
	

	@Test
	public void havekid() {
		log.info(service.haveChild(4));
	}
	
	@Test
	public void getList() {
		Criteria cri = new Criteria(1);

		log.info(service.list(cri,1));
	}


	@Test
	public void register() {
		ReplyVO vo = new ReplyVO();
		vo.setBno(1507455);
		vo.setRcontent("������� �Ⱓ�� ���������� ���� �������� �ַ� �������� ���� ������ ���� �� �̷����� ��濡 ������ �ξ�����, �� å�� ���� ���� ���忡�� ����ϴ� �����μ� �������� ����մϴ�.");
		vo.setReplyer("Ģ��");
		vo.setGno(2);
		vo.setRno(16);
		
		log.info(vo);
		service.create(vo);
	}
	@Test
	public void getRead() {
		log.info(service.read(510));
	}
	
	@Test
	public void remove() {
		
		log.info(service.delete(8231));
	}
	@Test
	public void update() {
		
		ReplyVO vo = new ReplyVO();
		vo.setRno(510);
		vo.setRcontent("Rcontene udddddddddpdate");
		vo.setReplyer("�׽�Ʈ");
		
		log.info(vo);
		service.update(vo);
		
		
		
	}
	
	
	
	
	
}
