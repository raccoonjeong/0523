package org.zerock.controller;

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
	public void registerGET()throws Exception{
		log.info("register get.............");
	
	}
	
	
	@PostMapping("/register")
	public String registerPOST(BoardVO vo, RedirectAttributes rttr)throws Exception{
		String title = vo.getTitle();

		if (title != null && title.trim().length() != 0) {
			service.register(vo);
			rttr.addFlashAttribute("msg", "success");
			
		} else {
			rttr.addFlashAttribute("msg", "fail");

		}

		return "redirect:/board/list";
			
	}

	@GetMapping("/read")
	public void read(@ModelAttribute("cri")Criteria cri, @RequestParam("bno") int bno,Model model) throws Exception{
		log.info("Read...zzz");
		model.addAttribute("vo", service.read(bno));
		
	}

}
