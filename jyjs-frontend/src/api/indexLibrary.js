import { get, post ,postKeyValueRequest} from '@lib/httpRequest'

export const queryIndexById = (id) => {
    return get('/api/index/query?id=' + id)
}

export const queryIndexByCode = (indexCode) => {
    return get('/api/index/query?indexCode=' + indexCode);
}

export const queryAllIndex = () => {
    return get('/api/index/query');
}

export const addIndex = (index) => {
    return post('/api/index/add', index);
}

export const updateIndex = (index) => {
    return post('/api/index/update', index);
}

export const deleteIndexByCode = (indexCode) => {
    return postKeyValueRequest('/api/index/delete',{'indexCode':indexCode});
}