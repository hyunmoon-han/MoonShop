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
import com.moon.app.ShareReplyVO;

@Controller
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/shareReply",method=RequestMethod.POST)
	public String shareReply() {
		return "";
	}
	@RequestMapping(value="/shareView/{sbbs_id}",method=RequestMethod.GET)
	public String shareView(@PathVariable("sbbs_id") int sbbs_id,Model model) {
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		//댓글
		ArrayList<ShareReplyVO> boardReply=shareBoardService.ShareReply(sbbs_id);
		model.addAttribute("boardReply", boardReply);
		model.addAttribute("boardView", shareBoardService.sBoardView(sbbs_id));
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
