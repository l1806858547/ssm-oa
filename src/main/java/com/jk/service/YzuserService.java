package com.jk.service;

import java.util.List;
import java.util.Set;

import com.jk.model.Role;
import com.jk.model.Yzuser;

public interface YzuserService {

	List<Yzuser> selectyzuser(Yzuser yzuser);

	Set<Role> getYzuserList(Yzuser log)throws Exception;


}
