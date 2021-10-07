package com.moon.app;

import java.util.ArrayList;

public interface BoardService {
	//검색
	public ArrayList<Board> btnSel(PageVO pageVO);
	
	//게시물 추가
	public void bbs_insert(String writer,String title,String content);
	//게시물 리스트
	public ArrayList<Board> bbs_All();
	//게시물 view
	public Board bbs_view(Board board);
	//게시물 수정하기
	public void bbs_Ut(String title,String content,int bbs_id);
	//게시물 삭제하기
	public void bbs_Del(int bbs_id);
	
}
