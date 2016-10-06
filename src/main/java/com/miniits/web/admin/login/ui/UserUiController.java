//package com.miniits.web.user.ui;
//
//import com.miniits.commons.utils.Envelop;
//import com.miniits.commons.utils.html.HtmlModel;
//import com.miniits.commons.utils.html.HtmlService;
//import com.miniits.commons.utils.web.BaseUiUtil;
//import com.miniits.web.user.controller.UserController;
//import freemarker.template.TemplateException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.swing.text.html.HTML;
//import java.io.File;
//import java.io.IOException;
//import java.text.ParseException;
//
///**
// * Created by wq on 2016/9/29.
// */
//
//@Controller
//@RequestMapping("/user")
//public class UserUiController extends BaseUiUtil {
//
//    @Autowired
//    private UserController controller;
//
//    @Autowired
//    private HtmlService htmlService;
//
//    @RequestMapping("/searchUsers")
//    @ResponseBody
//    public ModelAndView searchUsers(HttpServletRequest request,ModelMap modelMap) throws Exception {
//        HtmlModel htmlModel = new HtmlModel();
//
//        htmlModel.setTemplatePath("/user/ftl/file.ftl");
//        htmlModel.setSaveFileName("user.html");
//        htmlModel.setSaveFilePath("user"+File.separator+"html");
//
//        htmlModel = htmlService.process(htmlModel);
//        if (htmlModel.isSuccess()){
//
//        }
//
//        Envelop envelop = controller.searchUsers("","","",1,1);
//        String userMsg = toJson(envelop);
//        modelMap.put("userMsg",userMsg);
//        return new ModelAndView("/user/html/user",modelMap);
//    }
//
//}
