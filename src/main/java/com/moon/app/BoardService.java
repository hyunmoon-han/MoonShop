package com.moon.app;

import java.util.ArrayList;

public interface BoardService {
	public ArrayList<Board> bbs_All(String writer,String ritle,String content,String passcode,String created,String updated);
}
