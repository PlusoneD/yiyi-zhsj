package com.zhsj.filter;
import java.io.IOException;


import javax.servlet.*;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginFilter implements Filter {

    private FilterConfig filterConfig;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // TODO Auto-generated method stub
        this.filterConfig = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest) request;
        HttpServletResponse res=(HttpServletResponse) response;
        HttpSession session=req.getSession();
        String user_id=(String)session.getAttribute("user_id");       //从session中取得用户
        String url=req.getRequestURI();     //取得请求访问的地址
        //判断从session中取得用户是否为空
        if(user_id==null){
            //判断获取的路径不为空且不是访问登录页面或执行登录操作时跳转
            if(url!=null && !url.equals("") && ( url.indexOf("Login")<0 && url.indexOf("login")<0 )) {
                res.sendRedirect(req.getContextPath() + "/login.action");
                return;
            }
        }
        chain.doFilter(request,response);
        return;
    }

    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

    }