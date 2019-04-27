package com.qf.portal.service.impl;


import com.fasterxml.jackson.databind.util.JSONPObject;
import com.qf.portal.dao.PortalDao;
import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.TalkPage;
import com.qf.portal.pojo.po.AuthorDetails;
import com.qf.portal.pojo.po.NormalUser;

import com.qf.portal.pojo.po.Talk;
import com.qf.portal.service.PortalService;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PortalServiceImpl implements PortalService {
    @Autowired
    PortalDao portalDao;

    @Override
    public NormalUser checkUser(NormalUser user) {
        return portalDao.checkUser(user);
    }

    @Override
    public int adduser(NormalUser user) {
        return portalDao.addUser(user);
    }

    @Override
    public NormalUser checkUname(NormalUser user) {
        return portalDao.checkUname(user);
    }

    @Override
    public int updateTalk(Talk talk) {
        return portalDao.updateTalk(talk);
    }

    @Override
    public List<Talk> getAllTalk() {
        return portalDao.getAllTalk();
    }

    @Override
    public List<Talk> findTalkByPage(TalkPage talkPage) {
        return portalDao.findAllTalByPage(talkPage);
    }

    @Override
    public Map getObj() {
        Map map = new HashMap();
        List<Talk> rows = portalDao.getAllTalk();
        int a = rows.size();
        Long total = new Long((long) a);
        map.put("total", total);
        map.put("rows", rows);
        return map;
    }

    @Override
    public AuthorDetails findAuthorDetails(String poetryAuthor) {
        return portalDao.findAuthorDetails(poetryAuthor);
    }

    @Override
    public List<Poetry> findPoetryByAuthor(String author) {
        return portalDao.findPoetryByAuthor(author);
    }


}
