package com.prlife.jyjs.controller;

import com.prlife.jyjs.entity.SysUser;
import com.prlife.jyjs.service.SysUserService;
import com.prlife.jyjs.service.TimeStampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloWorldController {

    @RequestMapping("/helloWorld")
    public String helloWorld() {
        return "hello world!!!";
    }
}
