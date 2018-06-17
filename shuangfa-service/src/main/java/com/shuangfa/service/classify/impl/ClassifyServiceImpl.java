package com.shuangfa.service.classify.impl;

import com.shuangfa.domain.classify.Classify;
import com.shuangfa.domain.production.Production;
import com.shuangfa.domain.classify.ShowPVO;
import com.shuangfa.domain.production.Unit;
import com.shuangfa.mapper.classify.ClassifyMapper;
import com.shuangfa.mapper.production.ProductionMapper;
import com.shuangfa.mapper.production.UnitMapper;
import com.shuangfa.service.classify.ClassifyService;
import com.shuangfa.service.production.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ClassifyServiceImpl implements ClassifyService {

    @Autowired
    private ClassifyMapper classifyMapper;

    @Autowired
    private ProductionMapper productionMapper;

    @Autowired
    private UnitService unitService;

    public List<Classify> get() {
        List<Classify> result = classifyMapper.getAll();
        if(result == null || result.size() == 0){
            return new ArrayList<>();
        }else {
            return result;
        }
    }

    @Override
    public List<ShowPVO> getShowP() {


        List<Classify> classifyList = classifyMapper.getAll();
        List<Production> productionList = productionMapper.getAll();
        Map<Long, String> uMap = unitService.getUMap();


        // 随机打乱商品三次
        for (int i = 0; i < 3; i++) {
            Collections.shuffle(productionList);
        }

        List<ShowPVO> result = new ArrayList<>();
        for (Classify classify : classifyList) {
            ShowPVO vo = new ShowPVO();
            Long cid = classify.getId();
            vo.setCid(cid);
            vo.setCname(classify.getCname());
            vo.setCcontent(classify.getCcontent());
            vo.setCimg(classify.getCimg());
            int count = 0;
            List<Production> result_proList = new ArrayList<>();
            for (Production production : productionList) {
                // 商品属于分类的情况
                if(production.getCid().equals(cid)){
                    Long uid = production.getUid();
                    production.setUname(uMap.get(uid));
                    result_proList.add(production);
                    count++;
                    if(count >= 4){
                        break;
                    }
                }
            }
            vo.setList(result_proList);
            result.add(vo);
        }
        return result;
    }
}
