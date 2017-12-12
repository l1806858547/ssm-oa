package com.jk.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Yztree;
import com.jk.model.Yzuser;
import com.jk.service.TreeListService;
import com.jk.service.YzuserService;
@Controller
@RequestMapping("Tree")
public class TreeController {
	@Resource
	private TreeListService treeListService; 
	@Resource
	private YzuserService yzuserService;
	
	
	/**
	 * <pre>queryTree(查询树)   
	 * 创建人：桃子   
	 * 创建时间：2017年11月29日 下午8:27:24    
	 * 修改人：桃子
	 * 修改时间：2017年11月29日 下午8:27:24    
	 * 修改备注： 
	 * @param yztree
	 * @return</pre>
	 */
	@RequestMapping("querytree")
	@ResponseBody
	public Set<Map<String, Object>> queryTree(Yztree yztree,HttpServletRequest request){
		Yzuser user = (Yzuser) request.getSession().getAttribute("yzuser");//获得session对象
		Set<Map<String, Object>> treelist = new HashSet<Map<String,Object>>();//使用set集合去重
		treelist = treeListService.queryTree(user);
		return treelist;
	}
	/**
	 * <pre>selectyzuser(查询全部用户)   
	 * 创建人：桃子   
	 * 创建时间：2017年11月29日 下午8:54:26    
	 * 修改人：桃子
	 * 修改时间：2017年11月29日 下午8:54:26    
	 * 修改备注： 
	 * @param yzuser
	 * @return</pre>
	 */
	
	@RequestMapping("selecttzuser")
	@ResponseBody 
	public List<Yzuser> selectyzuser(Yzuser yzuser){
		
		List<Yzuser> yzuserlist = yzuserService.selectyzuser(yzuser);
		
		return yzuserlist;
	}
	
	
}
