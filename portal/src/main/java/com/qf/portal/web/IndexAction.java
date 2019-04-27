package com.qf.portal.web;

import com.qf.portal.pojo.TalkPage;
import com.qf.portal.pojo.po.NormalUser;

import com.qf.portal.pojo.po.Talk;
import com.qf.portal.service.PortalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexAction {

    @Autowired
    PortalService portalService;

    @GetMapping("/{path}")
    public String path(@PathVariable String path) {
        return path;
    }

    @PostMapping("/test")
    @ResponseBody
    public String test(String author) {
        System.out.println("author=" + author);
        return author;
    }

    @GetMapping("/index")
    public String addUser(HttpSession session, Model model, String currentPage) {
        List<Talk> list = new ArrayList<>();
        List<Talk> data = null;
        TalkPage talkPage = new TalkPage();
        list = portalService.getAllTalk();
        int cpage = 1;
        if (currentPage != null) {
            //如果前面传过来的参数里面带了当前页面的话,就吧页面强转为int类型的
            cpage = Integer.parseInt(currentPage);
            //把当前页设置为cpage，也就是穿过来的那个参数
            talkPage.setCurrentPage(cpage);

        } else {
            //如果什么都不带过来的话，就是默认的第一页

        }

        //设置起始下标
        talkPage.setOffSet((talkPage.getCurrentPage() - 1) * talkPage.getPageSize());
        //总页数等于总的记录条数除以pageSize再加1,这里就算出了总的页数
        int totalpage = (list.size() + talkPage.getPageSize() - 1) / talkPage.getPageSize();


        talkPage.setTotalPage(totalpage);
        //接下来就是查找出当前页的数据
        data = portalService.findTalkByPage(talkPage);

        System.out.println(data.size() + "查找的数据大大小");


        talkPage.setList(data);
        System.out.println(talkPage.getList().size() + "复制之后的");

        if (talkPage.getCurrentPage() <= talkPage.getTotalPage() && talkPage.getTotalPage() <= 10) {
            talkPage.setBegin(1);
            talkPage.setEnd(talkPage.getTotalPage());
        } else if (talkPage.getCurrentPage() > 10 && talkPage.getCurrentPage() + 5 > talkPage.getTotalPage()) {

            talkPage.setBegin(talkPage.getCurrentPage() - 5);
            talkPage.setEnd(talkPage.getTotalPage());
        } else if (talkPage.getCurrentPage() + 5 < talkPage.getTotalPage()) {
            talkPage.setBegin(talkPage.getCurrentPage() - 5);
            talkPage.setEnd(talkPage.getCurrentPage() + 5);
        }


        System.out.println(talkPage.getTotalPage());

        model.addAttribute("list", talkPage);

        return "index";
    }

    @GetMapping("/loginout")
    public String loginOut(HttpSession session) {
        session.invalidate();
        return "redirect:/index";
    }

}
