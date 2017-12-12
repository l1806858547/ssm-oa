package com.jk.service;

import java.util.List;
import java.util.Map;

public interface BingService {

	List<Map<String, Object>> queryBing() throws Exception;

	List<Map<String, Object>> queryYuan()throws Exception;

}
