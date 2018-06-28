package com.zly.site.model;

public class AllEmailSend {
    private String emailTo;

    private String emailFrom;

    public String getEmailTo() {
        return emailTo;
    }

    public void setEmailTo(String emailTo) {
        this.emailTo = emailTo == null ? null : emailTo.trim();
    }

    public String getEmailFrom() {
        return emailFrom;
    }

    public void setEmailFrom(String emailFrom) {
        this.emailFrom = emailFrom == null ? null : emailFrom.trim();
    }
}