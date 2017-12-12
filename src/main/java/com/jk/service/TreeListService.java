package com.jk.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.jk.model.Yztree;
import com.jk.model.Yzuser;

public interface TreeListService {

	Set<Map<String, Object>> queryTree(Yzuser user);

}
