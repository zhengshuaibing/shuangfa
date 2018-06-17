package com.shuangfa.service.classify;

import com.shuangfa.domain.classify.Classify;
import com.shuangfa.domain.classify.ShowPVO;

import java.util.List;

public interface ClassifyService {
    /**
     * 获取商品分类
     */
    List<Classify> get();
    /**
     * 获取商品分类及图片size允许随机商品
     */
    List<ShowPVO> getShowP();
}
