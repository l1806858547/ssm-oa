package com.jk.model;

public class RoleTree {
    private String jid;

    private String qid;

    private String jqid;

    public String getJid() {
        return jid;
    }

    public void setJid(String jid) {
        this.jid = jid == null ? null : jid.trim();
    }

    public String getQid() {
        return qid;
    }

    public void setQid(String qid) {
        this.qid = qid == null ? null : qid.trim();
    }

    public String getJqid() {
        return jqid;
    }

    public void setJqid(String jqid) {
        this.jqid = jqid == null ? null : jqid.trim();
    }
}