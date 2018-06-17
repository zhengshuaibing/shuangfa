package com.shuangfa.service.production.impl;

import com.shuangfa.domain.classify.Classify;
import com.shuangfa.domain.production.Production;
import com.shuangfa.domain.production.SearchVO;
import com.shuangfa.mapper.classify.ClassifyMapper;
import com.shuangfa.mapper.production.ProductionMapper;
import com.shuangfa.service.production.ProductionService;
import com.shuangfa.service.production.UnitService;
import com.shuangfa.util.page.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ProductionServiceImpl implements ProductionService {

    @Autowired
    private ProductionMapper productionMapper;

    @Autowired
    private UnitService unitService;

    @Autowired
    private ClassifyMapper classifyMapper;

    @Override
    public SearchVO search(Long cid, String pnamedesc, Integer page) {
        SearchVO result = new SearchVO();
        Map<Long, String> uMap = unitService.getUMap();
        PageUtil p = new PageUtil(page, 12, productionMapper.getCount(cid, pnamedesc));
        List<Production> list = productionMapper.search(cid, pnamedesc, p.begin(), p.offset());
        for (Production production : list) {
            production.setUname(uMap.get(production.getUid()));
            if(production.getPimg() == null){
                production.setPimg("sorry");
            }
        }
        List<Classify> clist = classifyMapper.getAll();
        result.setCid(cid);
        result.setPnamedesc(pnamedesc);
        result.setPage(p.page());
        result.setList(list);
        result.setPcount(p.totalCount());
        result.setClist(clist);
        result.setTotalPage(p.totalPage());
        return result;
    }
}
