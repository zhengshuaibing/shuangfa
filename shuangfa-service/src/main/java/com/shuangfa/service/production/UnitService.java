package com.shuangfa.service.production;

import java.util.Map;

public interface UnitService {
    /**
     * 获取商品id和uname一一对应的map
     */
    Map<Long,String> getUMap();
}
