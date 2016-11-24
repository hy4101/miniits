package com.miniits.web.user.blog.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.blog.model.Blog;
import com.miniits.web.user.blog.service.BlogService;
import com.miniits.web.web.user.model.User;
import com.miniits.web.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * Created by wq on 2016/10/20.
 */

@Service
public class BlogController extends BaseUtil {

    @Autowired
    private BlogService articleService;

    @Autowired
    private UserService userService;

    @Autowired
    private HttpServletRequest request;

    public Envelop searchArticles(String fields, String filters, String sotrs, int page, int size) throws ParseException {

        List<Blog> articleList = articleService.search(fields, filters, sotrs, page, size);

        Envelop envelop = getResult(articleList, articleService.getCount(filters), page, size);
        return envelop;
    }

    public Envelop deleteArticle(String id) throws ParseException {
        articleService.delete(id);
        return success("");
    }

    public Envelop getArticle(String id) {
        Blog blog = articleService.retrieve(id);
        User user = userService.retrieve(blog.getUserId());
        return success(blog,user);
    }

    public Envelop saveArticle(String jsonModel) throws ParseException {
        User user = (User) request.getSession().getAttribute("user");
        Blog article = toModel(jsonModel,Blog.class);
        article.setTime(new Date());
        article.setUserId(user.getId());
        return success(articleService.save(article));
    }
}