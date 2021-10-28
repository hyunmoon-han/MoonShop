package com.moon.controller;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShareController {
	private static final Logger logger = LoggerFactory.getLogger(ShareController.class);
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/sList")
	public String sList() {
		return "share";
	}
}
