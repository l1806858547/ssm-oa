package com.jk.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.YzuserMapper;
import com.jk.model.Yzuser;
import com.jk.service.UserLoginService;
@Service
public class UserLoginServiceImpl implements UserLoginService{
	@Autowired
	private  YzuserMapper yzuserMapper;
	//登陆
	@Override
	public Yzuser login(Yzuser yzuser) {
		Yzuser yzu = yzuserMapper.login(yzuser);
		if(yzu!=null){
			return yzu;
		
		}else{
			return null;
		}
	
	}
}
