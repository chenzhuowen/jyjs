package com.prlife.jyjs.controller;

import com.prlife.jyjs.entity.Index;
import com.prlife.jyjs.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/index")
public class IndexController {

    @Autowired
    private IndexService indexService;

    @GetMapping(value = "/query", params = {"id"})
    public Index queryIndexById(@RequestParam() Integer id) {
        return indexService.queryIndexById(id);
    }

    @GetMapping(value = "/query", params = {"indexCode"})
    public Index queryIndexByCode(@RequestParam() String indexCode) {
        return indexService.queryIndexByCode(indexCode);
    }

    @GetMapping("/query")
    public List<Index> queryAllIndex() {
        return indexService.queryAllIndex();
    }

    @PostMapping("/add")
    public int addIndex(@RequestBody Index index) {
        return indexService.insertIndex(index);
    }

    @PostMapping("/delete")
    public int deleteIndexByCode(@RequestParam String indexCode) {
        return indexService.deleteIndexByCode(indexCode);
    }

    @PostMapping("/update")
    public int updateIndex(@RequestBody Index index) {
        return indexService.updateIndex(index);
    }
}
