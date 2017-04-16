package com.miniits.web.user.blog.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.blog.controller.BlogController;
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
    private BlogController articleController;

    @RequestMapping("/getArticles")
    @ResponseBody
    public String getArticles(String filters,int page,int rows){
        try {
            Envelop envelop = articleController.searchArticles("",filters,"",page,rows);
            return toJson(envelop);
        } catch (ParseException e) {
            return toJson(error("帖子查询失败"));
        }
    }

    @RequestMapping("/getArticle")
    @ResponseBody
    public String getArticle(int id){
        Envelop envelop = articleController.getArticle(id);
        return toJson(envelop);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Envelop deleteArticle(int id){
        try {
            Envelop envelop = articleController.deleteArticle(id);
            return envelop;
        } catch (ParseException e) {
            return error("帖子查询删除");
        }
    }

    @RequestMapping("/save")
    @ResponseBody
    public Envelop save(String jsonModel){
        Envelop envelop = null;
        try {
            envelop = articleController.saveArticle(jsonModel);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return envelop;
    }
}
