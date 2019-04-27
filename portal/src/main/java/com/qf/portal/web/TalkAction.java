package com.qf.portal.web;


import com.qf.portal.dao.PoetryDao;
import com.qf.portal.dao.PortalDao;
import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.Talk;
import com.qf.portal.service.PortalService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
public class TalkAction {
    @Autowired
    PortalService portalService;
    @Autowired
    PoetryDao poetryDao;

    @ResponseBody
    @PostMapping("/gettalk")
    public Map gettalk() {
        Map map = new HashMap();
        map = portalService.getObj();
        System.out.println(map);
        return map;
    }


}



















