package com.shuangfa.controller.classify;

import com.alibaba.fastjson.JSON;
import com.shuangfa.domain.classify.Classify;
import com.shuangfa.domain.classify.ShowPVO;
import com.shuangfa.service.classify.ClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/classify")
public class ClassifyController {

    @Autowired
    private ClassifyService classifyService;

    /**
     * 获取商品分类
     */
    @RequestMapping("/get")
    @ResponseBody
    public String get(){
        List<Classify> list = classifyService.get();
        return JSON.toJSONString(list);
    }

    /**
     * 获取商品分类及图片size允许随机商品
     */
    @RequestMapping("/getShowP")
    @ResponseBody
    public String getShowP(){
        List<ShowPVO> list = classifyService.getShowP();
        return JSON.toJSONString(list);
    }


}
