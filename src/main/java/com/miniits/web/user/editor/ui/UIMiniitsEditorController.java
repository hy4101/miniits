package com.miniits.web.user.editor.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.web.user.article.controller.ArticleController;
import com.miniits.web.user.article.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;

/**
 * Created by wq on 2016/10/24.
 */

@Controller
@RequestMapping("/user")
public class UIMiniitsEditorController {

    @Autowired
    private ArticleController articleController;

    @RequestMapping("/editor.html")
    public String miniitsEditor(){
        return "/user/editor/index";
    }


}