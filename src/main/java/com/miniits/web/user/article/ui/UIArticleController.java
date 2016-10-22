package com.miniits.web.user.article.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.article.controller.ArticleController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;

/**
 * Created by wq on 2016/10/20.
 */

@Controller
@RequestMapping("/user/article")
public class UIArticleController extends BaseUtil {

    @Autowired
    private ArticleController articleController;

    @RequestMapping("/getArticles")
    @ResponseBody
    public Envelop getArticles(String filters,int page,int rows){
        try {
            Envelop envelop = articleController.searchArticles("",filters,"",page,rows);
            return envelop;
        } catch (ParseException e) {
            return error("帖子查询失败");
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Envelop deleteArticle(String id){
        try {
            Envelop envelop = articleController.deleteArticle(id);
            return envelop;
        } catch (ParseException e) {
            return error("帖子查询删除");
        }
    }
}
