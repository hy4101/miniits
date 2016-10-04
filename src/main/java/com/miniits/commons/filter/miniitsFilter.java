package com.miniits.commons.filter;

import org.apache.catalina.connector.RequestFacade;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by wq on 2016/10/4.
 */

@WebFilter(urlPatterns = "/*")
public class miniitsFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//        System.out.println("初始化过滤器");
    }

    /**
     * 执行过滤器
     * @param request
     * @param response
     * @param chain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        System.out.println("");
        String url = ((RequestFacade) request).getRequestURI();
        if (url.indexOf("login") == -1){
            chain.doFilter(request,response);
            return;
        }
        chain.doFilter(request,response);

    }

    @Override
    public void destroy() {
//        System.out.println("销毁过滤器");
    }
}
