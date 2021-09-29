package com.moon.app;

import java.util.ArrayList;

public interface BoardService {
	public void bbs_insert(String writer,String title,String content,String passcode,String created,String updated);
	public ArrayList<Board> bbs_All();
	public Board bbs_view(int bbs_id);
	
}
