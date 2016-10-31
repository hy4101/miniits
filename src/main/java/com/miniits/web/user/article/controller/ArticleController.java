package com.miniits.web.user.article.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.article.model.Article;
import com.miniits.web.user.article.service.ArticleService;
import com.miniits.web.webapp.user.model.User;
import org.hibernate.Session;
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
public class ArticleController extends BaseUtil {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private HttpServletRequest request;

    public Envelop searchArticles(String fields, String filters, String sotrs, int page, int size) throws ParseException {

        List<Article> articleList = articleService.search(fields, filters, sotrs, page, size);

        Envelop envelop = getResult(articleList, articleService.getCount(filters), page, size);
        return envelop;
    }

    public Envelop deleteArticle(String id) throws ParseException {
        articleService.delete(id);
        return success("");
    }

    public Envelop saveArticle(String jsonModel) throws ParseException {
        User user = (User) request.getSession().getAttribute("user");
        Article article = toModel(jsonModel,Article.class);
        article.setTime(new Date());
        article.setUserId(user.getId());
        return success(articleService.save(article));
    }
}