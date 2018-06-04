package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.UploadVO;

public interface UploadMapper {
	
	public List<UploadVO> getList();
	
	public int delete(String fullName);
	
	public int insert(UploadVO vo);
}
