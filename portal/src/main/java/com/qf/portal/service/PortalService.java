package com.qf.portal.service;


import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.TalkPage;
import com.qf.portal.pojo.po.AuthorDetails;
import com.qf.portal.pojo.po.NormalUser;

import com.qf.portal.pojo.po.Talk;


import java.util.List;
import java.util.Map;

public interface PortalService {


    NormalUser checkUser(NormalUser user);

    int adduser(NormalUser user);

    NormalUser checkUname(NormalUser user);

    int updateTalk(Talk talk);

    List<Talk> getAllTalk();

    List<Talk> findTalkByPage(TalkPage talkPage);


    Map getObj();

    AuthorDetails findAuthorDetails(String poetryAuthor);

    List<Poetry> findPoetryByAuthor(String author);
}
