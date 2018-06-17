package com.shuangfa.controller;

import com.shuangfa.domain.production.SearchVO;
import com.shuangfa.service.production.ProductionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private ProductionService productionService;

    /**
     * 首页
     */
    @RequestMapping("/index")
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/home/home1");
        return modelAndView;
    }

    /**
     * 查询页
     */
    @RequestMapping("/search")
    public ModelAndView search(Long cid, String pnamedesc, Integer page){
        ModelAndView modelAndView = new ModelAndView();
        SearchVO data = productionService.search(cid, pnamedesc, page);
        modelAndView.setViewName("/home/search");
        modelAndView.addObject("data", data);
        return modelAndView;
    }

    /**
     * 用户登录 校验权限 跳转.
     * @param req
     * @param resp
     * @return
     * @throws IOException
     */
    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        ModelAndView modelAndView = new ModelAndView();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        String user = (String) session.getAttribute("user");
        if (!StringUtils.isEmpty(user)){
            if ("admin".equals(username)) {
                modelAndView.setViewName("/home/index");
            }else{
                modelAndView.setViewName("/home/error");
            }
        }else{
            modelAndView.setViewName("/home/login");
        }
        return modelAndView;
    }

    /**
     * 错误页面跳转.
     */
    @RequestMapping("/error")
    public ModelAndView error(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/home/error");
        return modelAndView;
    }

}
