package com.qf.portal.web;

import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.AuthorDetails;
import com.qf.portal.service.PortalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller

public class PoetryAuthorAction {

    @Autowired
    PortalService portalService;


    @GetMapping("/details")
    public String details(String poetryAuthor, Model model) {


        AuthorDetails authorDetails = new AuthorDetails();

        authorDetails.setPoetryAuthor(poetryAuthor);

        authorDetails = portalService.findAuthorDetails(poetryAuthor);
        System.out.println(authorDetails);
        List<Poetry> list = null;
        list = portalService.findPoetryByAuthor(poetryAuthor);
        authorDetails.setPoetryDate(list);
        model.addAttribute("authorDetails", authorDetails);

        return "details";
    }


}
