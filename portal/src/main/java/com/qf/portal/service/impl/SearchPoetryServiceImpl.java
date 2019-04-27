package com.qf.portal.service.impl;

import com.qf.portal.dao.SearchResultDao;
import com.qf.portal.pojo.Poetry;
import com.qf.portal.pojo.po.SearchResult;
import com.qf.portal.service.SearchPoetryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class SearchPoetryServiceImpl implements SearchPoetryService {
    @Autowired
    SearchResultDao searchResultDao;


    @Override
    public List<Poetry> searchByName(SearchResult search) {
        return searchResultDao.searchByName(search);
    }

    @Override
    public int findcount(SearchResult search) {
        return searchResultDao.findcount(search);
    }
}
