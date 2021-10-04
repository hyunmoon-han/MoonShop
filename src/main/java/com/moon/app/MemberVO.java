package com.moon.app;

public class MemberVO {
	private String name;
	private String gender;
	private String userid;
	private String email;
	private String mobile;
	private String passcode;
	
	public MemberVO() {};
	
	public MemberVO(String name, String gender, String userid, String email, String mobile, String passcode) {
		this.name = name;
		this.gender = gender;
		this.userid = userid;
		this.email = email;
		this.mobile = mobile;
		this.passcode = passcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPasscode() {
		return passcode;
	}

	public void setPasscode(String passcode) {
		this.passcode = passcode;
	}
	
	
	
	
}
