package com.qf.portal.pojo.po;

import com.qf.portal.pojo.Poetry;

import java.util.List;

/***
 .::::.
 .::::::::.
 :::::::::::
 ..:::::::::::'
 '::::::::::::'
 .::::::::::
 '::::::::::::::..
 ..::::::::::::.
 ``::::::::::::::::
 ::::``:::::::::'        .:::.
 ::::'   ':::::'       .::::::::.
 .::::'      ::::     .:::::::'::::.
 .:::'       :::::  .:::::::::' ':::::.
 .::'        :::::.:::::::::'      ':::::.
 .::'         ::::::::::::::'         ``::::.
 ...:::           ::::::::::::'              ``::.
 ```` ':.          ':::::::::'                  ::::..
 '.:::::'                    ':'````..
 美女镇楼，永无bug！！！



 包    名： com.qf.portal.pojo.po
 用    户： landmyp
 创建时间：  2019三月 21 下午1:13 星期四
 所属项目：  finance
 current user system login name： 19-3-21
 版本：1.0
 */
public class SearchResult {
    private int currentPage = 1;
    private int pageSize = 8;
    private int begin;
    private int end;
    private String searchName;

    @Override
    public String toString() {
        return "SearchResult{" +
                "currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", begin=" + begin +
                ", end=" + end +
                ", searchName='" + searchName + '\'' +
                ", list=" + list +
                ", totalPage=" + totalPage +
                ", offSet=" + offSet +
                '}';
    }

    public String getSearchName() {
        return searchName;
    }

    public void setSearchName(String searchName) {
        this.searchName = searchName;
    }

    private List<Poetry> list;
    private int totalPage;
    private int offSet;

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

    public List<Poetry> getList() {
        return list;
    }

    public void setList(List<Poetry> list) {
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

    public SearchResult() {
    }

}
