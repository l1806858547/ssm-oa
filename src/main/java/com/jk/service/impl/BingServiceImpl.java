package com.jk.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.RoleMapper;
import com.jk.service.BingService;
@Service("bingService")
public class BingServiceImpl implements BingService{
	
	@Autowired
	private RoleMapper roleMapper;

	public List<Map<String, Object>> queryBing() throws Exception {
		// TODO Auto-generated method stub
		return roleMapper.queryBing();
	}

	public List<Map<String, Object>> queryYuan() throws Exception {
		// TODO Auto-generated method stub
		return roleMapper.queryYuan();
	}

}
