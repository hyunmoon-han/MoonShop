package com.moon.app;

public interface MemberService {
	//로그인 검사
	public int memberCheck(String userid,String passcode);
	
	//회원 가입
	public void memberInt(String name,String gender,String userid,String email,String mobile,String passcode);
	//연습 id로 등록된 이름 가져오기
	public String membername(String userid);
}
