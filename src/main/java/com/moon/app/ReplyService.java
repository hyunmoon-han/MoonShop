package com.moon.app;

public interface ReplyService {
	//댓글 추가
	public void ReplyInt(ReplyVO replyVO);
	//댓글 수정
	public void ReplyUp(ReplyVO replyVO);
	//댓글 삭제
	public void ReplyDel(ReplyVO replyVO);
}
