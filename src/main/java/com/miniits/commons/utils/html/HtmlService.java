//package com.miniits.commons.utils.html;
//
//import com.miniits.commons.shiro.freemarker.ShiroTags;
//import freemarker.template.Configuration;
//import freemarker.template.Template;
//import freemarker.template.TemplateException;
//import org.apache.commons.io.IOUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
//
//import javax.servlet.http.HttpServletRequest;
//import java.io.*;
//import java.util.HashMap;
//import java.util.Map;
//
///**
// * Created by wq on 2016/10/4.
// */
//
//@Service
//public class HtmlService {
//
//    @Autowired
//    private FreeMarkerConfigurer freeMarkerConfigurer;
//
//    @Autowired
//    private HttpServletRequest httpServletRequest;
//
//    String separator = File.separator;
//
//    public HtmlModel process(HtmlModel htmlModel) throws Exception {
//        Map<String, Object> rootMap = new HashMap<>();
//        String basePath = httpServletRequest.getSession().getServletContext().getRealPath(separator);
//        htmlModel.setBasePath(basePath);
//
//        Configuration configuration = freeMarkerConfigurer.getConfiguration();
//        configuration.setDefaultEncoding("UTF-8");
//        configuration.setSharedVariable("shiro", new ShiroTags());
//
//        String projectPath = basePath + separator + "WEB-INF" + separator + "jsp" + separator + "web" + separator + htmlModel.getSaveFilePath() + separator;
//
//        //生成静态文件名
//        File file = new File(projectPath, htmlModel.getSaveFileName());
//        if (file.exists()) {
//            htmlModel.setMessage("静态文件已存在");
//            htmlModel.setSuccess(true);
//            htmlModel.setFileReadPath(projectPath + htmlModel.getSaveFileName());
//            return htmlModel;
//        } else
//            file.getParentFile().mkdir();//先创建目录
//
//        try {
//            file.createNewFile();       //创建文件
//        } catch (IOException e) {
//            htmlModel.setMessage("静态文件创建失败");
//            htmlModel.setSuccess(false);
//            return htmlModel;
//        }
//        Template template = configuration.getTemplate(htmlModel.getTemplatePath());
//
//        rootMap.put("model", htmlModel);
//        File file1 = new File(projectPath + htmlModel.getSaveFileName());
//        Writer out = new OutputStreamWriter(new FileOutputStream(file1), "UTF-8");
//        template.process(rootMap, out);
//        IOUtils.closeQuietly(out);
//
//        file = new File(projectPath + htmlModel.getSaveFileName());
//        if (file.exists()) {
//            htmlModel.setMessage("静态文件生成成功");
//            htmlModel.setSuccess(true);
//        } else {
//            htmlModel.setMessage("生成静态文件程序已执行，未找到文件");
//            htmlModel.setSuccess(false);
//        }
//
//        return htmlModel;
//    }
//}
