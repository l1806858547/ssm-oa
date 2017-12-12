package com.jk.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jk.model.Yztree;

public interface YzTreeService {

	List<Yztree> queryRoletree(Yztree yztree);

	void addrole(String ids, String id)throws Exception;

}
