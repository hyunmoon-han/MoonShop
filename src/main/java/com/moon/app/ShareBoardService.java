package com.moon.app;

import java.util.ArrayList;

public interface ShareBoardService {
	public ArrayList<ShareBoardVO> sBoardALL();
	public ShareBoardVO sBoardView(int sbbs_id);
	public ArrayList<ShareReplyVO>ShareReply(int sbbs_id);
}
