package com.miniits.web.web.blog_document.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.html.HtmlModel;
import com.miniits.commons.utils.html.HtmlService;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.blog.controller.BlogController;
import com.miniits.web.user.blog.model.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

/**
 * Created by wq on 2016/11/20.
 */

@Controller
@RequestMapping("/document")
public class UIBlogDocumentController extends BaseUtil {

    @Autowired
    private HtmlService htmlService;

    @Autowired
    private BlogController articleController;

    @RequestMapping("{id}")
    public ModelAndView blog(@PathVariable(value = "id")String id, ModelMap modelMap) throws Exception {

        Envelop envelop = articleController.getArticle(id);
        modelMap.addAttribute("doc",envelop);

        return new ModelAndView("/web/blog_document/index",modelMap);
    }
}