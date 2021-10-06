package com.moon.app;

import java.util.ArrayList;

public interface ReplyService {
	
	//댓글 전체 검색
	public ArrayList<ReplyVO> ReplyAll(int bbs_id);
	//댓글 추가
	public void ReplyInt(ReplyVO replyVO);
	//댓글 수정
	public void ReplyUp(ReplyVO replyVO);
	//댓글 삭제
	public void ReplyDel(ReplyVO replyVO);
}
