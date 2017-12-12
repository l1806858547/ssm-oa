
 
package com.jk.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class RolesList {

	
	private List<Role> list =new ArrayList<Role>(); 
	
	
	private Set<Role> roles =new HashSet<Role>();


	public List<Role> getList() {
		return list;
	}


	public void setList(List<Role> list) {
		this.list = list;
	}


	public Set<Role> getRoles() {
		return roles;
	}


	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}


	

	
	
}
