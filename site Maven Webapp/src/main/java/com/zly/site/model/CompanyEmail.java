package com.zly.site.model;

public class CompanyEmail {
    private String time;

    private String proto;

    private String sip;

    private String sport;

    private String dip;

    private String dport;

    private String from;

    private String to;

    private String subject;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

    public String getProto() {
        return proto;
    }

    public void setProto(String proto) {
        this.proto = proto == null ? null : proto.trim();
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

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from == null ? null : from.trim();
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to == null ? null : to.trim();
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject == null ? null : subject.trim();
    }
}