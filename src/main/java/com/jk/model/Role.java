package com.jk.model;

public class Role {
    private String id;

    private String jsname;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getJsname() {
        return jsname;
    }

    public void setJsname(String jsname) {
        this.jsname = jsname == null ? null : jsname.trim();
    }
}