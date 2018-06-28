package com.zly.site.model;

public class CompanyTCPlog {
    private String stime;

    private String dtime;

    private String proto;

    private String dip;

    private String dport;

    private String sip;

    private String sport;

    private String uplinkLength;

    private String downlinkLength;

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime == null ? null : stime.trim();
    }

    public String getDtime() {
        return dtime;
    }

    public void setDtime(String dtime) {
        this.dtime = dtime == null ? null : dtime.trim();
    }

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

    public String getUplinkLength() {
        return uplinkLength;
    }

    public void setUplinkLength(String uplinkLength) {
        this.uplinkLength = uplinkLength == null ? null : uplinkLength.trim();
    }

    public String getDownlinkLength() {
        return downlinkLength;
    }

    public void setDownlinkLength(String downlinkLength) {
        this.downlinkLength = downlinkLength == null ? null : downlinkLength.trim();
    }
}