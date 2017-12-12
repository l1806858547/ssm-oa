package com.jk.service.impl;

import java.util.List;



import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;




import com.jk.dao.YzuserMapper;
import com.jk.model.Role;
import com.jk.model.Yzuser;
import com.jk.service.YzuserService;
@Service
public class YzuserServiceImpl implements YzuserService {
	@Resource
	private YzuserMapper yzuserMapper;
	
	@Override
	public List<Yzuser> selectyzuser(Yzuser yzuser) {
		// TODO Auto-generated method stub
		return yzuserMapper.selectyzuser(yzuser);
	}

	@Override
	public Set<Role> getYzuserList(Yzuser log) throws Exception {
		// TODO Auto-generated method stub
		return yzuserMapper.getYzuserList(log);
	}

	
}
