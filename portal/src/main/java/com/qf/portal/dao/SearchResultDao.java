package com.qf.portal.dao;/**
 * .::::.
 * .::::::::.
 * :::::::::::
 * ..:::::::::::'
 * '::::::::::::'
 * .::::::::::
 * '::::::::::::::..
 * ..::::::::::::.
 * ``::::::::::::::::
 * ::::``:::::::::'        .:::.
 * ::::'   ':::::'       .::::::::.
 * .::::'      ::::     .:::::::'::::.
 * .:::'       :::::  .:::::::::' ':::::.
 * .::'        :::::.:::::::::'      ':::::.
 * .::'         ::::::::::::::'         ``::::.
 * ...:::           ::::::::::::'              ``::.
 * ```` ':.          ':::::::::'                  ::::..
 * '.:::::'                    ':'````..
 * 美女镇楼，永无bug！！！
 */

import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.SearchResult;

import java.util.List;

/**
 * 包    名：  com.qf.portal.dao
 * 用    户：  landmyp
 * 创建时间：   2019三月 21 下午1:50 星期四
 * 所属项目：   finance
 * 时    间：  19-3-21
 * 版本：1.0
 */
public interface SearchResultDao {
    public List<Poetry> searchByName(SearchResult search);

    int findcount(SearchResult search);
}
