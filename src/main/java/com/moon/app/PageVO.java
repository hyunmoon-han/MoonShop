package com.moon.app;

public class PageVO {
	private String search_type;
	private String search_keyword;
	
	
	@Override
	public String toString() {
		return "PageVO [search_type=" + search_type + ", search_keyword=" + search_keyword + "]";
	}
	public PageVO() {};
	public PageVO(String search_type, String search_keyword) {
		this.search_type = search_type;
		this.search_keyword = search_keyword;
	}
	public String getSearch_type() {
		return search_type;
	}
	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}
	public String getSearch_keyword() {
		return search_keyword;
	}
	public void setSearch_keyword(String search_keyword) {
		this.search_keyword = search_keyword;
	}
	
	
}
