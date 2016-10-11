package com.miniits.web;

import com.miniits.commons.utils.html.HtmlModel;
import com.miniits.commons.utils.html.HtmlService;
import com.miniits.commons.utils.web.BaseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.File;

/**
 * 网站首页，展示静态文件
 * Created by wq on 2016/10/4.
 */


@Controller
@RequestMapping("/")
public class IndexUiController extends BaseUtil {

    @Autowired
    private HtmlService htmlService;

    @RequestMapping("/index.html")
    public String index() throws Exception {

        HtmlModel htmlModel = new HtmlModel();

        htmlModel.setTemplatePath("/webapp/index/ftl/index.ftl");
        htmlModel.setSaveFileName("index.html");
        htmlModel.setSaveFilePath("index" + File.separator + "html");
        htmlModel.setEntity("hello miniits");

        htmlModel = htmlService.process(htmlModel);
//        if (htmlModel.isSuccess())
//            return "/webapp/index/html/index";
//        else
            return "/webapp/index/index";
    }

}
