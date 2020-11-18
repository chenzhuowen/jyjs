package com.prlife.jyjs.mapper;


import com.prlife.jyjs.entity.DeductionRule;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface DeductionRuleMapper {

    DeductionRule queryDeductionRuleById(Integer id);

    DeductionRule queryDeductionRuleByIndexCode(String ruleYear,String indexCode);

    List<DeductionRule> queryAllDeductionRule(String ruleYear);

    int addDeductionRule(DeductionRule deductionRule);

    int deleteDeductionRule(String ruleYear,String indexCode);

    int updateDeductionRule(DeductionRule deductionRule);


}
