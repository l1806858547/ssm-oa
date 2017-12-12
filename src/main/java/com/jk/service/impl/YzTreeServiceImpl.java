package com.jk.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jk.dao.YztreeMapper;
import com.jk.model.Yztree;
import com.jk.service.YzTreeService;
@Service
public class YzTreeServiceImpl implements YzTreeService {
	@Autowired
	private YztreeMapper yztreeMapper;
	
	@Override
	public List<Yztree> queryRoletree(Yztree yztree) {
		// TODO Auto-generated method stub
		return yztreeMapper.queryRoletree(yztree);
	}

	@Override
	public void addrole(String jid, String id) throws Exception {
		yztreeMapper.deleteRoleUser(id);
		if(id!=null && !"".equals(id)){
			String[] idsr =id.split(",");
			List<Map<String,String>> list =new ArrayList<Map<String,String>>();
			for (int i = 0; i < idsr.length; i++) {
				Map<String,String> map =new HashMap<String,String>();
				map.put("userId", jid);
				map.put("roleId", idsr[i].trim().toString());
				
				list.add(map);
			}
			yztreeMapper.addrole(list);
		}
		
	}

}
