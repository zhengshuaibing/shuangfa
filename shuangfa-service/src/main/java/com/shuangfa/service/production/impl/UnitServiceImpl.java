package com.shuangfa.service.production.impl;

import com.shuangfa.domain.production.Unit;
import com.shuangfa.mapper.production.UnitMapper;
import com.shuangfa.service.production.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UnitServiceImpl implements UnitService {

    @Autowired
    private UnitMapper unitMapper;

    @Override
    public Map<Long, String> getUMap() {
        List<Unit> unitList = unitMapper.getAll();
        Map<Long, String> uMap = new HashMap<>();
        for (Unit unit : unitList) {
            uMap.put(unit.getId(), unit.getUname());
        }
        return uMap;
    }
}
