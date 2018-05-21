package org.zerock.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.springframework.web.bind.annotation.RequestParam;

import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.service.BoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Setter(onMethod_= {@Autowired})
	private BoardService service;
	
	@GetMapping("/list")
	public void getList(@ModelAttribute("cri")Criteria cri,Model model) throws Exception{
		log.info("list...zzz");
		model.addAttribute("list",service.list(cri));
		
		int totalCount = service.getTotal(cri);
		
		PageMaker pm = new PageMaker(cri, totalCount);
		model.addAttribute("pm",pm);		
		
	}
	
	@GetMapping("/register")
	public void registerGET(@ModelAttribute("cri")Criteria cri)throws Exception{
		log.info("register get.............");
		log.info(cri);
	
	}
	
	
	@PostMapping("/register")
	public String registerPOST(BoardVO vo, RedirectAttributes rttr)throws Exception{
		
		
		String title = vo.getTitle();
		String content = vo.getContent();
		

		if (title != null && title.trim().length() != 0 && content != null && content.trim().length() != 0) {
			service.register(vo);
			rttr.addFlashAttribute("msg", "success");
			
		} else {
			rttr.addFlashAttribute("msg", "fail");
		}

		
		
		return "redirect:/board/list";
			
	}

	@GetMapping("/read")
	public void read(@ModelAttribute("cri")Criteria cri, @RequestParam("bno") int bno,BoardVO vo,Model model) throws Exception{
		log.info("Read...zzz");
		model.addAttribute("vo", service.read(bno));
		
	}
	

	
	@PostMapping("/remove")
	public String removePOST(@ModelAttribute("cri")Criteria cri, @RequestParam("bno") int bno, String makeuri, RedirectAttributes rttr) {
		log.info("remove.....");
		
		try{
			service.remove(bno);
			rttr.addFlashAttribute("msg", "successRemove");
			
		}catch(Exception e){
			rttr.addFlashAttribute("msg", "failRemove");}
		
		
		return "redirect:/board/list"+makeuri;
	}

	@GetMapping("/modify")
	public void modify(@ModelAttribute("cri")Criteria cri, @RequestParam("bno") int bno,Model model)throws Exception{
		log.info("modify............");
		model.addAttribute("vo",service.read(bno));
	}
	
	@PostMapping("/modify")
	public String modifyPOST(@ModelAttribute("cri")Criteria cri,BoardVO vo,RedirectAttributes rttr)throws Exception{
		
	
		String title = vo.getTitle();
		String content = vo.getContent();
		int bno = vo.getBno();
		
		
		if (title != null && title.trim().length() != 0 && content != null && content.trim().length() != 0) {
			service.modify(vo);
			rttr.addFlashAttribute("msg", "success");
			
		} else {
			rttr.addFlashAttribute("msg", "fail");
		}

		return "redirect:/board/read" +cri.makeSearch(cri.getPage())+"&bno="+bno ;
	}
		


}
