package com.moon.app;

import java.lang.ProcessBuilder.Redirect;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private SqlSession sqlSession;
	//댓글기능
	@ResponseBody
	@RequestMapping(value="/ReplyControl",method=RequestMethod.POST)
	public String ReplyControl(HttpServletRequest hsr,ReplyVO replyVO) {
		
		  String a=hsr.getParameter("optrype"); 
		  //String b=hsr.getParameter("content");
		  /* String writer=hsr.getParameter("writer"); int
		 * bbs_id=Integer.parseInt(hsr.getParameter("bbs_id"));
		 * System.out.println("댓글 디버깅:"+a+"-"+b+"-"+bbs_id+"-"+writer);
		 */
		ReplyService replyService=sqlSession.getMapper(ReplyService.class);
		if(a.equals("add")) {
			  replyService.ReplyInt(replyVO);
			 
		}else if(a.equals("delete")) {
			replyService.ReplyDel(replyVO);
		}else if(a.equals("update")) {
			replyService.ReplyUp(replyVO);
		}
		return "OK";
	}
	//----검색기능---
	@RequestMapping(value="/selBtn",method=RequestMethod.POST)
	public String selBtn(HttpServletRequest hsr,Model model,@ModelAttribute("pageVO")PageVO pageVO) {
		String keyword=hsr.getParameter("search_keyword");
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		ArrayList<Board> list=boardService.btnSel(pageVO);
		model.addAttribute("listVO",list);
		model.addAttribute("pageVO", pageVO);

		return "list";
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpServletRequest hsr) {
		HttpSession session=hsr.getSession();
		session.invalidate();
		return "redirect:/login";
	}
	//로그인 페이지 이동
	
	//로그인 검사
	@ResponseBody
	@RequestMapping(value="/check_user",method=RequestMethod.POST)
	public String check_user(HttpServletRequest hsr) {
		String userid=hsr.getParameter("userid");
		String passcode=hsr.getParameter("passcode");
		MemberService memberService=sqlSession.getMapper(MemberService.class);
		int n=memberService.memberCheck(userid, passcode);
		if(n>0) {
			HttpSession session=hsr.getSession();
			session.setAttribute("userid", userid);
			return "1";
		}else {
			return "0";
		}
	
	}
	//로그인
	@RequestMapping("/login")
	public String loing() {
		return "login";
	}
	//회원가입 
	@RequestMapping(value="/member",method=RequestMethod.POST)
	public String member(HttpServletRequest hsr) {
		String name=hsr.getParameter("name");
		String gender=hsr.getParameter("gender");
		String userid=hsr.getParameter("userid");
		String email=hsr.getParameter("email");
		String mobile=hsr.getParameter("mobile");
		String passcode=hsr.getParameter("passcode");
		System.out.println("디버깅:"+name+"-"+gender+"-"+userid+"-"+email+"-"+mobile+"-"+passcode);

		MemberService memberService=sqlSession.getMapper(MemberService.class);
		memberService.memberInt(name, gender, userid, email, mobile, passcode);

		return "redirect:/newbie2";
	}
	
	@RequestMapping("/newbie2")
	public String newbie2() {
		return "newbie2";
	}
	//회원가입 페이지 이동
	@RequestMapping("/newbie")
	public String newbie() {
		return "newbie";
	}
	@RequestMapping(value="/board_Del",method=RequestMethod.POST)
	public String board_Del(HttpServletRequest hsr) {
		int bbs_id=Integer.parseInt(hsr.getParameter("bbs_id"));
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		boardService.bbs_Del(bbs_id);
				
		return "redirect:/board_list";
	}
	//게시물 업데이트 페이지 이동
	@RequestMapping(value="/board_update",method=RequestMethod.POST)
	public String board_update(HttpServletRequest hsr,Model model) {
		String title=hsr.getParameter("title");
		String content=hsr.getParameter("content");
		String passcode=hsr.getParameter("passcode");
		int bbs_id=Integer.parseInt(hsr.getParameter("bbs_id"));
		System.out.println("업데이트 디버깅:"+title+"-"+content+"-"+passcode+"-"+bbs_id);
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		boardService.bbs_Ut(title, content, passcode, bbs_id);
		return "redirect:/board_list";
		
	}
	//게시물 저장
	@RequestMapping(value="/board_Save",method=RequestMethod.POST)
	public String board_Save(HttpServletRequest hsr) {
		String writer=hsr.getParameter("writer");
		String title=hsr.getParameter("title");
		String content=hsr.getParameter("content");
		String passcode=hsr.getParameter("passcode");
//		String created=hsr.getParameter("created");
//		String updated=hsr.getParameter("updated");
		//이미지 추가 예정
		//System.out.println(writer+"-"+title+"-"+content+"-"+passcode);
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		boardService.bbs_insert(writer,title,content,passcode);
		
		return "redirect:/board_list";
	}
	//게시물 작성 페이지이동
	@RequestMapping("/board_insert")
	public String board_insert() {
		return "board_insert";
		
	}
	//게시물 view페이지
	@RequestMapping("/board_view")
	public String board_view(@RequestParam("bbs_id")int bbs_id,@RequestParam("vill")int vill,Model model,@ModelAttribute("board")Board board) {
		System.out.println(bbs_id);
		BoardService boardService=sqlSession.getMapper(BoardService.class);
		model.addAttribute("board",boardService.bbs_view(board));
		ReplyService replyService=sqlSession.getMapper(ReplyService.class);
		ArrayList<ReplyVO> replyVO=replyService.ReplyAll(bbs_id);
		model.addAttribute("replyVO",replyVO);
		if(vill==1) {
			return "board_update";
		}
		return "board_view";
		
	}
	//게시물 리스트 출력
	@RequestMapping("/board_list")
	public String board_list(HttpServletRequest hsr,Model model) {
		HttpSession session=hsr.getSession();
		String userid = (String) session.getAttribute("userid");
		System.out.println( "oo버딩="+userid);
		if (userid==null) {
			return "redirect:/login";
		}else {
			BoardService boardService=sqlSession.getMapper(BoardService.class);
			ArrayList<Board> boardVO= boardService.bbs_All();
			model.addAttribute("boardVO",boardVO);
			return "board_list";
		}
		
		
	}
	
	//카페 메뉴 상세보기
	@RequestMapping("/menu")
	public String munu() {
		return "menu";
	}
	//카페 메뉴 리스트
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
