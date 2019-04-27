package com.qf.portal.dao;


import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.TalkPage;
import com.qf.portal.pojo.po.AuthorDetails;
import com.qf.portal.pojo.po.NormalUser;

import com.qf.portal.pojo.po.Talk;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PortalDao {
    NormalUser checkUser(NormalUser user);

    int addUser(NormalUser user);

    NormalUser checkUname(NormalUser user);

    int updateTalk(Talk talk);

    List<Talk> getAllTalk();

    List<Talk> findAllTalByPage(TalkPage talkPage);

    AuthorDetails findAuthorDetails(@Param("poetryAuthor") String poetryAuthor);

    List<Poetry> findPoetryByAuthor(@Param("author") String author);

    List<Poetry> fpo();
}
