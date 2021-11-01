package com.moon.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moon.app.ShareBoardService;
import com.moon.app.ShareBoardVO;

@Controller
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/shareView/{al}",method=RequestMethod.GET)
	public String shareView(@PathVariable("al") int al,Model model) {
		System.out.println(al);
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		model.addAttribute("boardView", shareBoardService.sBoardView(al));
		return "shareView";
	}
	@RequestMapping(value="/shareView",method=RequestMethod.GET)
	public String shareView2() {
		return "shareView";
	}
	@RequestMapping("/sList")
	public String sList(Model model) {
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		ArrayList<ShareBoardVO> boardList=shareBoardService.sBoardALL();
		model.addAttribute("boardList",boardList);
		return "share";
	}
}
