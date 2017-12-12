package com.jk.dao;

import java.util.List;

import com.jk.model.Role;



public interface RoleTreeMapper {

	List<Role> queryRoleTree(Role roleList);


}