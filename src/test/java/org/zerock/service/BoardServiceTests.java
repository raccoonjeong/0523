package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_= {@Autowired})
	private BoardService service;
	
	
	@Test
	public void getList() {
		Criteria cri = new Criteria(3);
		log.info(service.list(cri));
	}
	
	@Test
	public void register() {
		BoardVO vo = new BoardVO();
		vo.setTitle("AOP");
		vo.setContent("������ �ǹ̷δ� '����' Ȥ�� � ������ '��'�� �ǹ������� ���� ���߿��� �ǹ��ϴ� ���� '�����Ͻ� ������ �ƴ����� �ݵ�� �ؾ��ϴ� �۾�' ������ �ؼ��� �� �ִ� ");
		vo.setWriter("�ݵ���");
		log.info(vo);
		service.register(vo);
		
	}
	
	@Test
	public void remove() {
		int bno = 1507384;
		
		service.remove(bno);
	}

}
