package com.qf.portal.pojo;

import com.qf.portal.pojo.po.Talk;

import java.util.List;

public class TalkPage {
    private int currentPage = 1;
    private int pageSize = 6;
    private int begin;
    private int end;
    private List<Talk> list;
    private int totalPage;
    private int offSet;

    public TalkPage() {
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public List<Talk> getList() {
        return list;
    }

    public void setList(List<Talk> list) {
        this.list = list;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getOffSet() {
        return offSet;
    }

    public void setOffSet(int offSet) {
        this.offSet = offSet;
    }

    @Override
    public String toString() {
        return "TalkPage{" +
                "currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", begin=" + begin +
                ", end=" + end +
                ", list=" + list +
                ", totalPage=" + totalPage +
                ", offSet=" + offSet +
                '}';
    }
}
