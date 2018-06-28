package com.zly.site.model;

public class CompanyWEBlog {
    private String time;

    private String sip;

    private String sport;

    private String dip;

    private String dport;

    private String host;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
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

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host == null ? null : host.trim();
    }
}