package com.miniits.web.web.blog_document.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.html.HtmlModel;
import com.miniits.commons.utils.html.HtmlService;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.blog.controller.BlogController;
import com.miniits.web.user.blog.model.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String blog(@PathVariable(value = "id")String id) throws Exception {

        Envelop envelop = articleController.getArticle(id);

        HtmlModel htmlModel = new HtmlModel();

        htmlModel.setTemplatePath("/web/blog_document/ftl/index.ftl");
        htmlModel.setSaveFileName("index.html");
        htmlModel.setSaveFilePath("blog_document" + File.separator + "html");
        htmlModel.setEntity((Blog)envelop.getObj());

        htmlModel = htmlService.process(htmlModel);
//        if (htmlModel.isSuccess())
//            return "/webapp/index/html/index";
//        else

//        return "/web/blog_document/index";
        return "G:/develop/miniits/src/main/webapp/WEB-INF/jsp/web/blog_document/html";
    }
}