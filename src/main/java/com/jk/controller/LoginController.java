package com.jk.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Yzuser;
import com.jk.service.UserLoginService;

@Controller
@RequestMapping("login")
public class LoginController {
	@Autowired
	private UserLoginService userLoginService;
	@RequestMapping("loginquery")
	@ResponseBody
	public int login(Yzuser yzuser,HttpSession session){
		
		Yzuser dbyzuser = userLoginService.login(yzuser);
		System.out.println(dbyzuser);
		if(dbyzuser==null){
			
			return 123;
		}else{
			session.setAttribute("yzuser", dbyzuser);
			return 456;
		}
		
	}
	
}
