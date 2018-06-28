package com.zly.site.model;

public class CompanyLogin {
    private String proto;

    private String dip;

    private String dport;

    private String sip;

    private String sport;

    private String state;

    private String time;

    private String user;

    public String getProto() {
        return proto;
    }

    public void setProto(String proto) {
        this.proto = proto == null ? null : proto.trim();
    }

    public String getDip() {
        return dip;
    }

    public void setDip(String dip) {
        this.dip = dip == null ? null : dip.trim();
    }

    public String getDport() {
        return dport;
    }

    public void setDport(String dport) {
        this.dport = dport == null ? null : dport.trim();
    }

    public String getSip() {
        return sip;
    }

    public void setSip(String sip) {
        this.sip = sip == null ? null : sip.trim();
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport == null ? null : sport.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user == null ? null : user.trim();
    }
}