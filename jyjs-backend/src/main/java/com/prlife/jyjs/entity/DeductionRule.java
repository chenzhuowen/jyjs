package com.prlife.jyjs.entity;

public class DeductionRule {

    private Integer id;
    private Integer indexId;
    private String indexCode;
    private String indexName;
    private String ruleYear;
    private String completionRateType;
    private Float upperLimit;
    private Float lowerLimit;
    private String deductionRuleDes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIndexId() {
        return indexId;
    }

    public void setIndexId(Integer indexId) {
        this.indexId = indexId;
    }

    public String getIndexCode() {
        return indexCode;
    }

    public void setIndexCode(String indexCode) {
        this.indexCode = indexCode;
    }

    public String getIndexName() {
        return indexName;
    }

    public void setIndexName(String indexName) {
        this.indexName = indexName;
    }

    public String getRuleYear() {
        return ruleYear;
    }

    public void setRuleYear(String ruleYear) {
        this.ruleYear = ruleYear;
    }

    public String getCompletionRateType() {
        return completionRateType;
    }

    public void setCompletionRateType(String completionRateType) {
        this.completionRateType = completionRateType;
    }

    public Float getUpperLimit() {
        return upperLimit;
    }

    public void setUpperLimit(Float upperLimit) {
        this.upperLimit = upperLimit;
    }

    public Float getLowerLimit() {
        return lowerLimit;
    }

    public void setLowerLimit(Float lowerLimit) {
        this.lowerLimit = lowerLimit;
    }

    public String getDeductionRuleDes() {
        return deductionRuleDes;
    }

    public void setDeductionRuleDes(String deductionRuleDes) {
        this.deductionRuleDes = deductionRuleDes;
    }
}
