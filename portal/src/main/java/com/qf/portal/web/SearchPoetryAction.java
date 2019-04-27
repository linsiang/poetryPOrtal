package com.qf.portal.web;

import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.Author;
import com.qf.portal.pojo.po.SearchResult;
import com.qf.portal.service.SearchPoetryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
 * 包    名： com.qf.portal.web
 * 用    户： landmyp
 * 创建时间：  2019三月 21 上午10:51 星期四
 * 所属项目：  finance
 * current user system login name： 19-3-21
 * 版本：1.0
 */

@Controller
public class SearchPoetryAction {


    @Autowired
    SearchPoetryService searchPoetryService;

    /* @ResponseBody*/

    @GetMapping("/searchPoetry")
    public String searchPoetry(String poetryAuthor, String currentPage, Model model) {
        SearchResult search = new SearchResult();
        List<Poetry> lists = null;
        //判断前方传来的东西里面有没有分页操作以是否点击了下一页等操作
        if (poetryAuthor != null) {
            if (poetryAuthor.trim().isEmpty()) {
                search.setSearchName("");
            } else {
                Author.setPoetry_author(poetryAuthor);
            }

            //静态变量，用于设置他来控制查找的范围，如果前端传开了新的诗人名称的话，就是用新的诗人名称来查询

        } else {
            //如果没有新的参数传进来，就用原来的诗人继续查找出下一页或者是指定页的内容
            poetryAuthor = Author.getPoetry_author();
        }


        if (currentPage != null) {

            if (poetryAuthor.trim().isEmpty()) {

                search.setCurrentPage(1);
            }


            if (Integer.parseInt(currentPage) < 1) {

                search.setCurrentPage(1);
            } else {
                search.setCurrentPage(Integer.parseInt(currentPage));
            }

        } else {

        }

        search.setSearchName(poetryAuthor);
        //这里是算查找的开始下标，也就是我们的offset,赋值
        int a = (search.getCurrentPage() - 1) * search.getPageSize();
        search.setOffSet(a);

        int total = searchPoetryService.findcount(search);

        /* System.out.println("总的页数：======》"+total);*/
        search.setTotalPage((total + search.getPageSize() - 1) / search.getPageSize());
        lists = searchPoetryService.searchByName(search);
        //ok,这已经是分好页的数据了，接下来就是设置分页的操作了
        search.setList(lists);
        if (search.getCurrentPage() <= 10 && search.getTotalPage() >= 10) {
            search.setBegin(1);
            search.setEnd(10);

        }

        if (search.getCurrentPage() > 10 && (search.getCurrentPage()) + 5 <= search.getTotalPage()) {
            search.setBegin(search.getCurrentPage() - 5);
            search.setEnd(search.getCurrentPage() + 5);
        }

        if (search.getCurrentPage() > 10 && (search.getCurrentPage()) + 5 > search.getTotalPage()) {

            search.setBegin(search.getCurrentPage() - 5);
            search.setEnd(search.getTotalPage());

        }


        /* System.out.println(search);*/


        model.addAttribute("search", search);
        return "searchResult";
    }

}
