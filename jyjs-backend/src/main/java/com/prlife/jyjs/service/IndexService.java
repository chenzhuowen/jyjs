package com.prlife.jyjs.service;

import com.prlife.jyjs.entity.Index;
import com.prlife.jyjs.mapper.IndexMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexService {

    @Autowired
    private IndexMapper indexMapper;

    public Index queryIndexById(Integer id) {
        return indexMapper.queryIndexById(id);
    }

    public Index queryIndexByCode(String indexCode) {
        return indexMapper.queryIndexByCode(indexCode);
    }

    public List<Index> queryAllIndex() {
        return indexMapper.queryAllIndex();
    }

    public int insertIndex(Index index) {
        return indexMapper.addIndex(index);
    }

    public int deleteIndexByCode(String indexCode) {
        return indexMapper.deleteIndexByCode(indexCode);
    }

    public int updateIndex(Index index) {
        return indexMapper.updateIndex(index);
    }
}
