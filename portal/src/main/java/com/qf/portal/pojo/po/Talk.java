package com.qf.portal.pojo.po;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Talk {
    private String uname;
    private String contants;
    private String talktimestr;
    private Date talktime;
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Override
    public String toString() {
        return "Talk{" +
                "uname='" + uname + '\'' +
                ", contants='" + contants + '\'' +
                ", talktimestr='" + talktimestr + '\'' +
                ", talktime=" + talktime +
                ", sdf=" + sdf +
                '}';
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getContants() {
        return contants;
    }

    public void setContants(String contants) {
        this.contants = contants;
    }

    public String getTalktimestr() {
        return talktimestr;
    }

    public void setTalktimestr(String talktimestr) {
        this.talktimestr = talktimestr;
    }


    public Date getTalktime() {
        return talktime;
    }

    public void setTalktime(Date talktime) {
        this.talktime = talktime;
        String time = sdf.format(talktime);
        setTalktimestr(time);
    }

    public SimpleDateFormat getSdf() {
        return sdf;
    }

    public void setSdf(SimpleDateFormat sdf) {
        this.sdf = sdf;
    }

    public Talk() {
    }
}
