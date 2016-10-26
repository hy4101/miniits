package com.miniits.web.user.blog.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.article.controller.ArticleController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;

/**
 * Created by wq on 2016/10/20.
 */

@Controller
@RequestMapping("/blog")
public class UIBlogController extends BaseUtil {

    @Autowired
    private ArticleController articleController;

    @RequestMapping("{userName}")
    public String blog(@PathVariable String userName){
        return "/user/blog/index";
    }

}
