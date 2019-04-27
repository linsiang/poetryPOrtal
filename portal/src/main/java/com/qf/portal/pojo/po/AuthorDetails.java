package com.qf.portal.pojo.po;

import com.qf.portal.pojo.Poetry;

import java.util.List;

public class AuthorDetails {

    private int pid;
    private String poetryAuthor;
    private String description;
    private String dynasty;
    private String imags;
    private List<Poetry> poetryDate;

    @Override
    public String toString() {
        return "AuthorDetails{" +
                "pid=" + pid +
                ", poetryAuthor='" + poetryAuthor + '\'' +
                ", description='" + description + '\'' +
                ", dynasty='" + dynasty + '\'' +
                ", imags='" + imags + '\'' +
                ", poetryDate=" + poetryDate +
                '}';
    }

    public List<Poetry> getPoetryDate() {
        return poetryDate;
    }

    public void setPoetryDate(List<Poetry> poetryDate) {
        this.poetryDate = poetryDate;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPoetryAuthor() {
        return poetryAuthor;
    }

    public void setPoetryAuthor(String poetryAuthor) {
        this.poetryAuthor = poetryAuthor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDynasty() {
        return dynasty;
    }

    public void setDynasty(String dynasty) {
        this.dynasty = dynasty;
    }

    public String getImags() {
        return imags;
    }

    public void setImags(String imags) {
        this.imags = imags;
    }

    public AuthorDetails() {
    }
}
