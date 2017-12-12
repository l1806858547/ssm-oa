package com.jk.dao;



import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jk.model.Yztree;
import com.jk.model.Yzuser;

public interface YztreeMapper {
   
	Set<Map<String, Object>> queryTree(Yzuser user);

	List<Yztree> queryRoletree(Yztree yztree);

	void addrole(String ids, String id);

	void deleteRoleUser(String jid);

	void addrole(List<Map<String, String>> list);
}