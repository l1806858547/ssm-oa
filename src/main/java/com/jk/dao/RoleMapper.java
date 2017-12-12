package com.jk.dao;

import java.util.List;
import java.util.Map;

import com.jk.model.Role;

public interface RoleMapper {

	List<Role> getRoleList();

	void addUserRoleRelation(List<Map<String, String>> list);

	void deleteRoleUser(String userId);

	List<Role> queryRoleTree(Role roleList);

	List<Map<String, Object>> queryBing();

	List<Map<String, Object>> queryYuan();

	
}