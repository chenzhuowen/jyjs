package com.prlife.jyjs.service.impl;

import com.prlife.jyjs.entity.SysUser;
import com.prlife.jyjs.mapper.SysUserMapper;
import com.prlife.jyjs.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserServiceImpl implements SysUserService {

    @Autowired
    private SysUserMapper sysUserMapper;

    public SysUser getSysUser(String userName) {
        return sysUserMapper.querySysUser(userName);
    }
}
