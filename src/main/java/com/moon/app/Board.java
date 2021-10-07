package com.moon.app;

public class Board {
	private int bbs_id;
	private String title;
	private String content;
	private String writer;
	private String created;
	private String updated;
	private String img_loc;
	
	
	public Board() {
		
	}
	public Board(int bbs_id, String title, String content, String writer, String created,
			String updated, String img_loc) {
		this.bbs_id = bbs_id;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.created = created;
		this.updated = updated;
		this.img_loc = img_loc;
	}
	public int getBbs_id() {
		return bbs_id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getWriter() {
		return writer;
	}
	public String getCreated() {
		return created;
	}
	public String getUpdated() {
		return updated;
	}
	public String getImg_loc() {
		return img_loc;
	}
	public void setBbs_id(int bbs_id) {
		this.bbs_id = bbs_id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public void setUpdated(String updated) {
		this.updated = updated;
	}
	public void setImg_loc(String img_loc) {
		this.img_loc = img_loc;
	}
	
	
}
