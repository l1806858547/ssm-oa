package com.jk.dao;

import java.util.List;
import java.util.Set;

import com.jk.model.Role;
import com.jk.model.Yzuser;

public interface YzuserMapper {
	
	Yzuser login(Yzuser yzuser);

	List<Yzuser> selectyzuser(Yzuser yzuser);

	Set<Role> getYzuserList(Yzuser log);
}