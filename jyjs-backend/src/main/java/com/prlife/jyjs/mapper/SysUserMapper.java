package com.prlife.jyjs.mapper;

import com.prlife.jyjs.entity.SysUser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface SysUserMapper {

    SysUser querySysUser(String userName);
}
