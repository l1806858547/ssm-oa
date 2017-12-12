package com.jk.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jk.dao.YztreeMapper;
import com.jk.model.Yztree;
import com.jk.model.Yzuser;
import com.jk.service.TreeListService;
@Service
public class TreeListServiceImpl implements TreeListService {
	@Resource
	private YztreeMapper yztreemapper;

	

	@Override
	public Set<Map<String, Object>> queryTree(Yzuser user) {
		// TODO Auto-generated method stub
		return yztreemapper.queryTree(user);
	}
	
}
