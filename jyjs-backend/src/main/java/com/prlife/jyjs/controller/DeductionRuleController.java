package com.prlife.jyjs.controller;

import com.prlife.jyjs.entity.DeductionRule;
import com.prlife.jyjs.service.DeductionRuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/deductionRule")
public class DeductionRuleController {

    @Autowired
    private DeductionRuleService deductionRuleService;

    @GetMapping(value = "/query")
    public DeductionRule queryDeductionRuleById(@RequestParam Integer id) {
        return deductionRuleService.queryDeductionRuleById(id);
    }

    @GetMapping(value ="/query")
    public DeductionRule queryDeductionRuleByIndexId(@RequestParam Integer indexId,@RequestParam String ruleYear) {
        return deductionRuleService.queryDeductionRuleByIndexId(indexId,ruleYear);
    }

    @GetMapping(value ="/query")
    public List<DeductionRule> queryAllDeductionRule(@RequestParam String ruleYear) {
        return deductionRuleService.queryAllDeductionRule(ruleYear);
    }

    @PostMapping(value="/add")
    public int addDeductionRule(@RequestBody DeductionRule deductionRule) {
        return deductionRuleService.addDeductionRule(deductionRule);
    }

    @PostMapping(value="/delete")
    public int deleteDeductionRule(@RequestParam Integer id) {
        return deductionRuleService.deleteDeductionRule(id);
    }

    @PostMapping(value="/update")
    public int updateDeductionRule(@RequestBody DeductionRule deductionRule) {
        return deductionRuleService.updateDeductionRule(deductionRule);
    }


}
