package com.prlife.jyjs.service;

import com.prlife.jyjs.entity.DeductionRule;
import com.prlife.jyjs.mapper.DeductionRuleMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeductionRuleService {

    @Mapper
    private DeductionRuleMapper deductionRuleMapper;

    public DeductionRule queryDeductionRuleById(Integer id) {
        return deductionRuleMapper.queryDeductionRuleById(id);
    }

    public DeductionRule queryDeductionRuleByIndexId(Integer indexId,String ruleYear) {
        return deductionRuleMapper.queryDeductionRuleByIndexId(indexId,ruleYear);
    }

    public List<DeductionRule> queryAllDeductionRule(String ruleYear) {
        return deductionRuleMapper.queryAllDeductionRule(ruleYear);
    }

    public int addDeductionRule(DeductionRule deductionRule) {
        return deductionRuleMapper.addDeductionRule(deductionRule);
    }

    public int deleteDeductionRule(Integer id) {
        return deductionRuleMapper.deleteDeductionRule(id);
    }

    public int updateDeductionRule(DeductionRule deductionRule) {
        return deductionRuleMapper.updateDeductionRule(deductionRule);
    }


}
