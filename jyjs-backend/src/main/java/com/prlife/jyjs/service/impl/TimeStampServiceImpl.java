package com.prlife.jyjs.service.impl;

import com.prlife.jyjs.mapper.TimeStampMapper;
import com.prlife.jyjs.service.TimeStampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TimeStampServiceImpl implements TimeStampService {

    @Autowired
    TimeStampMapper timeStampMapper;

    public String queryCurrentTimeStamp() {
        return timeStampMapper.queryCurrentTimeStamp();
    }

    public String queryUtcTimeStamp() {
        return timeStampMapper.queryUtcTimeStamp();
    }


}
