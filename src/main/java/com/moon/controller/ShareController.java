package com.moon.controller;

import java.io.File;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.moon.app.ShareBoardService;
import com.moon.app.ShareBoardVO;
import com.moon.app.ShareReplyVO;

@Controller
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private SqlSession sqlSession;
	//댓글달기
	@ResponseBody
	@RequestMapping(value="/boardReply_I",method=RequestMethod.POST)
	public String boardReply_U(HttpServletRequest hsr) {
		int sbbs_id=Integer.parseInt(hsr.getParameter("sbbs_id"));
		String writer=hsr.getParameter("writer");
		int sreply_ids=Integer.parseInt(hsr.getParameter("sreply_ids"));
		String content=hsr.getParameter("rText");
		System.out.println("댓글 디버깅:"+sbbs_id+"-"+writer+"-"+sreply_ids+"-"+content);
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		shareBoardService.sboardReply_I(sbbs_id,sreply_ids,content,writer);
		
		return "ok";
	}
	//게시물 삭제
	@RequestMapping(value="/sBoardDel",method=RequestMethod.POST)
	public String sBoardDel(HttpServletRequest hsr) {
		String sbbs_id=hsr.getParameter("sbbs_id");
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		shareBoardService.sBoardDL(sbbs_id);
		return "redirect:/sList";
	}
	@ResponseBody
	@RequestMapping(value="/boardImg_D",method=RequestMethod.POST)
	public String boardImg_D(HttpServletRequest hsr) {
		return "success";
	}
	String uploadPath="C:\\eclipseno\\workspace\\MoonShop\\src\\main\\webapp\\resources";
	//String uploadPath="C:\\egov\\workspace\\MoonShop\\src\\main\\webapp\\resources";
	@RequestMapping(value="/shareSave",method=RequestMethod.POST)
	public String shareSave(HttpServletRequest hsr,MultipartFile img_1,MultipartFile img_2,MultipartFile img_3,MultipartFile img_4,MultipartFile img_5) {
		//이미지 업로드 파일
		  String fileName1 = img_1.getOriginalFilename();
			
			  String fileName2 = img_2.getOriginalFilename();
			  String fileName3 =img_3.getOriginalFilename();
			  String fileName4 = img_4.getOriginalFilename();
			  String fileName5 = img_5.getOriginalFilename();
			 
			  File target1 = new File(uploadPath, fileName1);
			  File target2 = new File(uploadPath, fileName2);
			  File target3 = new File(uploadPath, fileName3); 
			  File target4 = new File(uploadPath, fileName4);
			  File target5 = new File(uploadPath, fileName5);
			 
	        
	        //경로 생성
	        if ( ! new File(uploadPath).exists()) {
	            new File(uploadPath).mkdirs();
	        }
	        //파일 복사
	        try {
	            FileCopyUtils.copy(img_1.getBytes(), target1);
				  FileCopyUtils.copy(img_2.getBytes(), target2);
				  FileCopyUtils.copy(img_3.getBytes(), target3);
				  FileCopyUtils.copy(img_4.getBytes(), target4);
				  FileCopyUtils.copy(img_5.getBytes(), target5);
				 
	      //      mv.addObject("file", file);
	        } catch(Exception e) {
	            e.printStackTrace();
	        //    mv.addObject("file", "error");
	        }
	        //View 위치 설정
	     //   mv.setViewName("post/test_upload.basic");
		String writer=hsr.getParameter("writer");
		String content=hsr.getParameter("content");
		String address=hsr.getParameter("address");
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		shareBoardService.sBoardInsert(writer,content,address,fileName1,fileName2,fileName3,fileName4,fileName5);
		return "redirect:/sList";
	}
	@RequestMapping("/shareUpdate/{sbbs_id}")
	public String shareUpdate(@PathVariable("sbbs_id") int sbbs_id,Model model) {
		ShareBoardService shareBoardService=sqlSession.getMapper(ShareBoardService.class);
		
		model.addAttribute("boardList", shareBoardService.sBoardView(sbbs_id));
		return "shareUpdate";
	}
	@RequestMapping("/shareInsert")
	public String shareInsert() {
		
		return "shareInsert";
	}
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
