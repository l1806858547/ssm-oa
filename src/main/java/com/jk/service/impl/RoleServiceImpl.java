package com.jk.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;






import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jk.dao.RoleMapper;
import com.jk.model.Role;
import com.jk.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService {
	@Resource
	private RoleMapper roleMapper;
	
	public List<Role> getRoleList() {
	
		return roleMapper.getRoleList();
	}

	@Override
	public void addRoleUser(String id, String userId) throws Exception {
		roleMapper.deleteRoleUser(userId);
		if(id!=null && !"".equals(id)){
			String[] ids =id.split(",");
			List<Map<String,String>> list =new ArrayList<Map<String,String>>();
			for (int i = 0; i < ids.length; i++) {
				Map<String,String> map =new HashMap<String,String>();
				map.put("userId", userId);
				map.put("roleId", ids[i].trim().toString());
				
				list.add(map);
			}
			roleMapper.addUserRoleRelation(list);
		}
		
		
	}

	@Override
	public List<Role> queryRoleTree(Role roleList) {
		// TODO Auto-generated method stub
		return roleMapper.queryRoleTree(roleList);
	}

	
	
}
