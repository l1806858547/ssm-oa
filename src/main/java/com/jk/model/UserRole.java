package com.jk.model;

import java.util.List;
import java.util.Set;

public class UserRole {
    private String usid;

   private List<Role> rlist;
   
   private Set<Role> roles;
   
   private List<Yzuser> ulist;

public String getUsid() {
	return usid;
}

public void setUsid(String usid) {
	this.usid = usid;
}

public List<Role> getRlist() {
	return rlist;
}

public void setRlist(List<Role> rlist) {
	this.rlist = rlist;
}

public Set<Role> getRoles() {
	return roles;
}

public void setRoles(Set<Role> roles) {
	this.roles = roles;
}

public List<Yzuser> getUlist() {
	return ulist;
}

public void setUlist(List<Yzuser> ulist) {
	this.ulist = ulist;
}
   
   
}