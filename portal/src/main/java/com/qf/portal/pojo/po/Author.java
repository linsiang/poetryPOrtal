package com.qf.portal.pojo.po;/**
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

/**
 * 包    名：  com.qf.portal.pojo.po
 * 用    户：  landmyp
 * 创建时间：   2019三月 21 下午1:37 星期四
 * 所属项目：   finance
 * 时    间：  19-3-21
 * 版本：1.0
 */
public class Author {

    public static String poetry_author;
    public static String currentPage;

    public static String getCurrentPage() {
        return currentPage;
    }

    public static void setCurrentPage(String currentPage) {
        Author.currentPage = currentPage;
    }

    public static String getPoetry_author() {
        return poetry_author;
    }

    public static void setPoetry_author(String poetry_author) {
        Author.poetry_author = poetry_author;
    }

    public Author() {
    }
}
