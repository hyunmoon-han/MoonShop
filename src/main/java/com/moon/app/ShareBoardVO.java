package com.moon.app;

public class ShareBoardVO {
	private int sbbs_id;
	private String content;
	private String writer;
	private String created;
	private String address;
	private String img_1;
	private String img_2;
	private String img_3;
	private String img_4;
	private String img_5;
	private int heart;
	public ShareBoardVO() {}
	
	public ShareBoardVO(int sbbs_id, String content, String writer, String created, String address, String img_1,
			String img_2, String img_3, String img_4, String img_5, int heart) {
		this.sbbs_id = sbbs_id;
		this.content = content;
		this.writer = writer;
		this.created = created;
		this.address = address;
		this.img_1 = img_1;
		this.img_2 = img_2;
		this.img_3 = img_3;
		this.img_4 = img_4;
		this.img_5 = img_5;
		this.heart = heart;
	}

	public int getSbbs_id() {
		return sbbs_id;
	}
	public void setSbbs_id(int sbbs_id) {
		this.sbbs_id = sbbs_id;
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
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImg_1() {
		return img_1;
	}
	public void setImg_1(String img_1) {
		this.img_1 = img_1;
	}
	public String getImg_2() {
		return img_2;
	}
	public void setImg_2(String img_2) {
		this.img_2 = img_2;
	}
	public String getImg_3() {
		return img_3;
	}
	public void setImg_3(String img_3) {
		this.img_3 = img_3;
	}
	public String getImg_4() {
		return img_4;
	}
	public void setImg_4(String img_4) {
		this.img_4 = img_4;
	}
	public String getImg_5() {
		return img_5;
	}
	public void setImg_5(String img_5) {
		this.img_5 = img_5;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	};
	
	
}
