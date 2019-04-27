package com.qf.portal.service;

import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.SearchResult;

import java.util.List;

/**
 * //                       .::::.
 * //                     .::::::::.
 * //                    :::::::::::
 * //                 ..:::::::::::'
 * //              '::::::::::::'
 * //                .::::::::::
 * //           '::::::::::::::..
 * //                ..::::::::::::.
 * //              ``::::::::::::::::
 * //               ::::``:::::::::'        .:::.
 * //              ::::'   ':::::'       .::::::::.
 * //            .::::'      ::::     .:::::::'::::.
 * //           .:::'       :::::  .:::::::::' ':::::.
 * //          .::'        :::::.:::::::::'      ':::::.
 * //         .::'         ::::::::::::::'         ``::::.
 * //     ...:::           ::::::::::::'              ``::.
 * //    ```` ':.          ':::::::::'                  ::::..
 * //                       '.:::::'                    ':'````..
 * *                    美女镇楼，永无bug！！！
 * *
 * <p>
 * <p>
 * 包    名： com.qf.portal.service
 * 用    户： landmyp
 * 创建时间：  2019三月 21 上午10:52 星期四
 * 所属项目：  finance
 * current user system login name： 19-3-21
 * 版本：1.0
 */
public interface SearchPoetryService {
    List<Poetry> searchByName(SearchResult search);

    int findcount(SearchResult search);
}
