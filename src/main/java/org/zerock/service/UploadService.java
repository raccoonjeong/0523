package org.zerock.service;

import java.util.List;

import org.zerock.domain.UploadVO;

public interface UploadService {
	
	public List<UploadVO> getList();
	
	public int delete(String fullName);
	
	public int insert(UploadVO vo);
}
