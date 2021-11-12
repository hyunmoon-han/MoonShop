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
import org.springframework.web.multipart.MultipartFile;

import com.moon.app.ShareBoardService;
import com.moon.app.ShareBoardVO;
import com.moon.app.ShareReplyVO;

@Controller
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private SqlSession sqlSession;
	
	String uploadPath="C:\\eclipseno\\workspace\\MoonShop\\src\\main\\webapp\\resources";
	@RequestMapping(value="shareSave",method=RequestMethod.POST)
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
	
		/*
		 * String img1=img_1.getOriginalFilename(); String
		 * img2=img_2.getOriginalFilename(); String img3=img_3.getOriginalFilename();
		 * String img4=img_4.getOriginalFilename(); String
		 * img5=img_5.getOriginalFilename();
		 * System.out.println("디버깅:"+writer+"-"+content+"-"+address+"-"+img1+"-"+img2+
		 * "-"+img3+"-"+img4+"-"+img5);
		 */
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
