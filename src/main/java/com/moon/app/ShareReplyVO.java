package com.moon.app;

public class ShareReplyVO {
	private int sbbs_id;
	private int sreply_id;
	private int sreply_ids;
	private String content;
	private String writer;
	private int heart;
	private String created;
	
	public ShareReplyVO() {};
	public ShareReplyVO(int sbbs_id, int sreply_id, int sreply_ids, String content, String writer, int heart,
			String created) {
		this.sbbs_id = sbbs_id;
		this.sreply_id = sreply_id;
		this.sreply_ids = sreply_ids;
		this.content = content;
		this.writer = writer;
		this.heart = heart;
		this.created = created;
	}
	public int getSbbs_id() {
		return sbbs_id;
	}
	public void setSbbs_id(int sbbs_id) {
		this.sbbs_id = sbbs_id;
	}
	public int getSreply_id() {
		return sreply_id;
	}
	public void setSreply_id(int sreply_id) {
		this.sreply_id = sreply_id;
	}
	public int getSreply_ids() {
		return sreply_ids;
	}
	public void setSreply_ids(int sreply_ids) {
		this.sreply_ids = sreply_ids;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	
	
}
