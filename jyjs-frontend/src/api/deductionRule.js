import { get, post ,postKeyValueRequest} from '@lib/httpRequest'

export const queryDeductionRuleById = (id) => {
    return get('/api/deductaionRule/query?id=' + id)
}

export const queryDeductionRuleByIndexId = (indexId) => {
    return get('/api/deductaionRule/query?indexId=' + indexId);
}

export const queryAllDeductionRule = (ruleYear) => {
    return get('/api/deductaionRule/query?ruleYear='+ruleYear);
}

export const addDeductionRule = (index) => {
    return post('/api/deductaionRule/add', index);
}

export const updateDeductionRule = (index) => {
    return post('/api/deductaionRule/update', index);
}

export const deleteDeductionRuleById = (indexCode) => {
    return postKeyValueRequest('/api/deductaionRule/delete',{'indexCode':indexCode});
}