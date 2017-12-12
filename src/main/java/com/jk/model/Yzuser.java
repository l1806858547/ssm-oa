package com.jk.model;

import java.io.Serializable;
import java.util.Date;

public class Yzuser implements Serializable{
    private static final long serialVersionUID = 3015793635322876694L;

	private Integer userid;

    private String username;

    private String userpass;

    private Date zctime;

    private Date lasttime;

    private String usersex;

    private String userage;

    private String userimg;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass == null ? null : userpass.trim();
    }

    public Date getZctime() {
        return zctime;
    }

    public void setZctime(Date zctime) {
        this.zctime = zctime;
    }

    public Date getLasttime() {
        return lasttime;
    }

    public void setLasttime(Date lasttime) {
        this.lasttime = lasttime;
    }

    public String getUsersex() {
        return usersex;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex == null ? null : usersex.trim();
    }

    public String getUserage() {
        return userage;
    }

    public void setUserage(String userage) {
        this.userage = userage == null ? null : userage.trim();
    }

    public String getUserimg() {
        return userimg;
    }

    public void setUserimg(String userimg) {
        this.userimg = userimg == null ? null : userimg.trim();
    }

	@Override
	public String toString() {
		return "Yzuser [userid=" + userid + ", username=" + username
				+ ", userpass=" + userpass + ", zctime=" + zctime
				+ ", lasttime=" + lasttime + ", usersex=" + usersex
				+ ", userage=" + userage + ", userimg=" + userimg + "]";
	}
    
}