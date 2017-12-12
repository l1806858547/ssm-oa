package com.jk.service;

import java.util.List;

import com.jk.model.Role;


public interface RoleService {

	List<Role> getRoleList();

	void addRoleUser(String id, String userId)throws Exception;

	List<Role> queryRoleTree(Role roleList);

}
