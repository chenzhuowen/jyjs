package com.prlife.jyjs.mapper;

import com.prlife.jyjs.entity.Index;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface IndexMapper {

    Index queryIndexById(Integer id);

    Index queryIndexByCode(String indexCode);

    List<Index> queryAllIndex();

    int addIndex(Index index);

    int deleteIndexByCode(String indexCode);

    int updateIndex(Index index);
}
