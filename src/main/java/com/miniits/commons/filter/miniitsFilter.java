package com.miniits.commons.filter;

import com.miniits.web.web.user.model.User;
import org.apache.catalina.connector.RequestFacade;
import org.springframework.util.StringUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
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


        //登入放行
        if (url.indexOf("/admin/login") != -1
                ||url.indexOf("/user/login.html") != -1
                ||url.indexOf("/register") != -1
                ||url.indexOf("/activate") != -1
                ||url.indexOf("/resources") != -1
                ||url.indexOf("/getArticles") != -1
                ) {
            chain.doFilter(request, response);
            return;
            /**
             * 后台管理拦截
             * 路径带有admin或user  拦截
             * 其他不拦截
             */
        }










//拦截
        if (url.indexOf("/admin") != -1
                ||url.indexOf("/user") != -1
                ||url.indexOf("/blog") != -1
                ) {
            String requestUrl = url.indexOf("/user") != -1?"/user/login.html":"/admin/login";
            User userAdmin = (User) ((RequestFacade) request).getSession().getAttribute("admin");
            User user = (User) ((RequestFacade) request).getSession().getAttribute("user");

            if ((StringUtils.isEmpty(userAdmin)||StringUtils.isEmpty(userAdmin.getId()))&&(StringUtils.isEmpty(user)||StringUtils.isEmpty(user.getId()))) {
                HttpServletResponse ro = (HttpServletResponse) response;
                ro.sendRedirect(((RequestFacade) request).getContextPath()+requestUrl);
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
