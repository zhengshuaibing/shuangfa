package com.shuangfa.controller.interceptor;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by zhengshuaibing on 2018/6/17.
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    private static final Logger log = Logger.getLogger(LoginInterceptor.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String requestUri = request.getRequestURI();
        String contextPath = request.getContextPath();
        String url = requestUri.substring(contextPath.length());

        log.info("requestUri:"+requestUri);
        log.info("contextPath:"+contextPath);
        log.info("url:"+url);

        String username = request.getParameter("username");
        if (!StringUtils.isEmpty(username)){
            HttpSession session = request.getSession();
            session.setAttribute("user", username);
        }
        String password = request.getParameter("password");

        return true;
//        String user =  (String)request.getSession().getAttribute("user");
//        if(user == null && StringUtils.isEmpty(username)){
//            log.info("Interceptor：跳转到login页面！");
//            request.getRequestDispatcher("/WEB-INF/one/home/login.jsp").forward(request, response);
//            return false;
//        }else{
//            return true;
//        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }
}
