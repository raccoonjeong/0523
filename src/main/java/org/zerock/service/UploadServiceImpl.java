package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.UploadVO;
import org.zerock.mapper.UploadMapper;

import lombok.Setter;

@Service
public class UploadServiceImpl implements UploadService {

	@Setter(onMethod_= {@Autowired})
	private UploadMapper mapper;
	
	@Override
	public List<UploadVO> getList() {

		return mapper.getList();
	}

	@Override
	public int delete(String fullName) {
		
		return mapper.delete(fullName);
	}

	@Override
	public int insert(UploadVO vo) {

		return mapper.insert(vo);
	}

}
