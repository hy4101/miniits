package com.miniits.commons.filter;

import com.miniits.web.webapp.user.model.User;
import org.apache.catalina.connector.RequestFacade;
import org.springframework.util.StringUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
     *
     * @param request
     * @param response
     * @param chain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String url = ((RequestFacade) request).getRequestURI();
        if (url.indexOf("/admin/login") != -1) {
            chain.doFilter(request, response);
            return;
        } else if (url.indexOf("/admin") != -1) {
            User user = (User) ((RequestFacade) request).getSession().getAttribute("admin");
            if (StringUtils.isEmpty(user)||StringUtils.isEmpty(user.getId())) {
                HttpServletResponse ro = (HttpServletResponse) response;
                ro.sendRedirect(((RequestFacade) request).getContextPath()+"/admin/login");
                return;
            }
        }
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
//        System.out.println("销毁过滤器");
    }
}
