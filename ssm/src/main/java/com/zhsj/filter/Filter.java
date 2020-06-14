package com.zhsj.filter;

import javax.servlet.*;
import java.io.IOException;

public interface Filter {
    void init(FilterConfig filterConfig) throws ServletException;
    void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException;
    void destroy();
}
