package com.shuangfa.service.production;

import com.shuangfa.domain.production.SearchVO;

public interface ProductionService {
    /**
     * 查询商品
     * @param cid 商品种类
     * @param pnamedesc 商品名称描述
     * @param page 分页页数
     */
    SearchVO search(Long cid, String pnamedesc, Integer page);
}
