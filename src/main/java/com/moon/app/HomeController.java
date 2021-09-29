package com.moon.app;

import java.lang.ProcessBuilder.Redirect;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/board_update")
	public String board_update() {
		return "board_update";
		
	}
	//게시물 저장
	@RequestMapping(value="/board_Save",method=RequestMethod.POST)
	public String board_Save(HttpServletRequest hsr) {
		String writer=hsr.getParameter("writer");
		String title=hsr.getParameter("title");
		String content=hsr.getParameter("content");
		String passcode=hsr.getParameter("passcode");
		String created=hsr.getParameter("created");
		String updated=hsr.getParameter("updated");
		//이미지 추가 예정
		//System.out.println(writer+"-"+title+"-"+content+"-"+passcode+"-"+created+"-"+updated);
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		boardService.bbs_insert(writer,title,content,passcode,created,updated);
		
		return "redirect:/board_list";
	}
	@RequestMapping("/board_insert")
	public String board_insert() {
		return "board_insert";
		
	}
	
	@RequestMapping("/board_view")
	public String board_view(@RequestParam("bbs_id")int bbs_id,Model model) {
		System.out.println(bbs_id);
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		Board board=boardService.bbs_view(bbs_id);
		model.addAttribute("board",board);
		return "board_view";
		
	}
	@RequestMapping("/board_list")
	public String board_list(Model model) {
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		ArrayList<Board> boardVO= boardService.bbs_All();
		model.addAttribute("boardVO",boardVO);
		return "board_list";
		
	}
	@RequestMapping("/menu")
	public String munu() {
		return "menu";
	}
	@RequestMapping("/coffee")
	public String coffee() {
		return "coffee";
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
