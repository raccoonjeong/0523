package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest {


	@Setter(onMethod_= {@Autowired})
	private ReplyMapper mapper;
	
	@Test
	public void getList() {
		Criteria cri = new Criteria(1);

		log.info(mapper.list(cri,1));
	}

	@Test
	public void getTotal() {
		Criteria cri = new Criteria();
		log.info(mapper.getTotal(4));
	}
	
	@Test
	public void register() {
		ReplyVO vo = new ReplyVO();
		vo.setBno(11);
		vo.setRcontent("������� �Ⱓ�� ���������� ���� �������� �ַ� �������� ���� ������ ���� �� �̷����� ��濡 ������ �ξ�����, �� å�� ���� ���� ���忡�� ����ϴ� �����μ� �������� ����մϴ�.");
		vo.setReplyer("Ģ��");
		log.info(vo);
		mapper.create(vo);
	}
	@Test
	public void getRead() {
		log.info(mapper.read(442));
	}
	
	@Test
	public void remove() {
		
		log.info(mapper.delete(440));
	}
	@Test
	public void update() {
		
		ReplyVO vo = new ReplyVO();
		vo.setRno(432);
		vo.setRcontent("Rcontene update");
		vo.setReplyer("�׽�Ʈ");
		
		log.info(vo);
		mapper.update(vo);
		
		
		
	}
}
