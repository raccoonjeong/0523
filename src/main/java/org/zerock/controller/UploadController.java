package org.zerock.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.UploadVO;

import org.zerock.service.UploadService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/up/*")
@Log4j
public class UploadController {
	
	@Setter(onMethod_= {@Autowired})
	private UploadService service;

	
	@PostMapping(value="/ajax", produces="application/json")
	public @ResponseBody ResponseEntity<List<String>> uploadAjaxFiles(MultipartFile[] file ) throws Exception{
		
		log.info(Arrays.toString(file));
		
		List<String> uploadNames = new ArrayList<String>();
		
		for (MultipartFile upfile : file) {
		
			log.info(upfile.getOriginalFilename());
			log.info("----------------------------");
			
			UUID uid= UUID.randomUUID();
			
			String uploadFileName = uid.toString()+"_"+upfile.getOriginalFilename();
			
			UploadVO vo = new UploadVO();
			vo.setFullName(uploadFileName);
			
			service.insert(vo);
			
			FileOutputStream fos = 
					new FileOutputStream( new File("C:\\zzz\\upload",
						uploadFileName	) );
		
			FileCopyUtils.copy(upfile.getInputStream(), fos);
			fos.close();
	
			//make thumbnail
			
			FileOutputStream thfos = 
				new FileOutputStream(
				 new File("C:\\zzz\\upload", 
						 "s_" + uploadFileName)
				);
			
			Thumbnailator.createThumbnail(
					upfile.getInputStream(), 
					thfos, 100,100);
			thfos.close();
			
			uploadNames.add(uploadFileName);		
		}
		
		return new ResponseEntity<List<String>>(uploadNames, HttpStatus.OK);
		
	}
	
	@GetMapping("/ajax")
	public void uploadAjax() {
	
		log.info("upload Ajax get");
		
	}

	@GetMapping("/listdata")
	public ResponseEntity<List<UploadVO>> listdata() {
	
		log.info("upload Ajax get");
		
		return new ResponseEntity<List<UploadVO>>(service.getList(),HttpStatus.OK);
	}
	
	@DeleteMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(@RequestBody String fullName){
		log.info("deleteFile...........");
		log.info("fullname:...."+fullName);
		
		//������
		service.delete(fullName); 
		
		//��������
		new File("C:\\zzz\\upload\\"+fullName).delete();
		new File("C:\\zzz\\upload\\"+"s_"+fullName).delete();
		
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	
}
