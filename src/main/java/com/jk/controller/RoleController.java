package com.jk.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Role;
import com.jk.model.RolesList;
import com.jk.model.UserRole;
import com.jk.model.Yztree;
import com.jk.model.Yzuser;
import com.jk.service.RoleService;
import com.jk.service.YzTreeService;
import com.jk.service.YzuserService;

@Controller
@RequestMapping("Role")
public class RoleController {
	@Autowired
	private YzuserService yzuserService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private YzTreeService yzTreeService;
	//这只是弹框页面跳转  这是用户赋角色的页面
	@RequestMapping("toYzRoleUser")
	public String toYzRoleUser(String userid,HttpServletRequest request){
		
		request.setAttribute("userid", userid);
		
		return "roleUser";
	}
	
	//这是查询用户的集合
	//还有角色里面所有集合
	@RequestMapping("roleNodes")
	@ResponseBody
	public RolesList roleNodes(String id,HttpServletRequest request,HttpServletResponse response) throws Exception{
		Yzuser log = new Yzuser();
		log.setUserid(Integer.parseInt(id));
		RolesList list2 = new RolesList();
		//调用getResourcesList获得当前用户的角色集合
			Set<Role> roles =new HashSet<Role>();
			roles  = yzuserService.getYzuserList(log);
			//获得所有的角色
			List<Role> list = new ArrayList<Role>();
			list = roleService.getRoleList();
			list2.setList(list);
			list2.setRoles(roles);
		return list2;
	}
	@RequestMapping("addRoleUser")
	@ResponseBody
	public String addRoleUser(String id,String userId,HttpServletRequest request,HttpServletResponse response){
		try {
			roleService.addRoleUser(id,userId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
//？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？？
	
	
	@RequestMapping("queryRoleTree")
	@ResponseBody
	public List<Role> queryRoleTree(Role roleList){
		
		List<Role> list =  roleService.queryRoleTree(roleList);
		System.out.println("这是查询全部数据"+list);
		return list;
	}
	
	
	
	//角色赋权限
	@RequestMapping("ToRoleTree")
	public String ToRoleTree(String id,HttpServletRequest request){
		System.out.println("这是查询所有的id是否有值"+id);
		request.setAttribute("jid", id);
		return "Tree";
	}
	
	
	@RequestMapping("querytree")
	@ResponseBody
	public List<Yztree> queryRoletree(Yztree yztree,HttpServletRequest request){
		
		List<Yztree> roleTrList = yzTreeService.queryRoletree(yztree);
		System.out.println("这是查询树"+roleTrList);
		return roleTrList;
	}
	@RequestMapping("addrole")
	@ResponseBody
	public String addrole(String jid,String id,HttpServletRequest request,HttpServletResponse response){
		
		try {
			yzTreeService.addrole(jid,id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "su";
	}
}
