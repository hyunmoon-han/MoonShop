package com.moon.app;

import java.util.ArrayList;

public interface ShareBoardService {
	public ArrayList<ShareBoardVO> sBoardALL();
	public ShareBoardVO sBoardView(int sbbs_id);
	public ArrayList<ShareReplyVO>ShareReply(int sbbs_id);
	public void sBoardInsert(String writer,String content,String address,String img_1,String img_2,String img_3,String img_4,String img_5);
	public void sBoardUpdate(int sbbs_id);
}
