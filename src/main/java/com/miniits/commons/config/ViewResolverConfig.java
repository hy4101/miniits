package com.miniits.commons.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import java.util.Properties;

/**
 * Created by wq on 2016/10/4.
 *
 * 视图解析器配置文件
 *
 * 定义两种视图解析器：
 *       1:定义internalresourceviewresolver视图解析器作为备选，返回 jsp 动态文件 属性order = 1 备选；
 *      2：定义freemarkerconfigurer视图解析器作为首选，返回 HTML 静态文件 属性 order = 0 首选；
 *
 */


@Configuration
public class ViewResolverConfig {

    /**
     * java配置bean   bean 的默认id为方法名
     * @return
     */
    @Bean
    public FreeMarkerConfigurer freeMarkerConfigurer(){
        FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
        Properties property = new Properties();

        property.setProperty("template_update_delay","10");
        property.setProperty("defaultEncoding","UTF-8");
        property.setProperty("number_format","0.##########");
        property.setProperty("datetime_format","yyyy-MM-dd HH:mm:ss");
        property.setProperty("classic_compatible","true");
        property.setProperty("template_exception_handler","ignore");
//        freeMarkerConfigurer.setTemplateLoaderPath("/WEB-INF/html/");
        freeMarkerConfigurer.setTemplateLoaderPath("/WEB-INF/jsp/");
        freeMarkerConfigurer.setFreemarkerSettings(property);

        return freeMarkerConfigurer;
    }

    @Bean
    public FreeMarkerViewResolver viewResolver(){
        FreeMarkerViewResolver freeMarkerViewResolver = new FreeMarkerViewResolver();

        freeMarkerViewResolver.setSuffix(".html");
        freeMarkerViewResolver.setOrder(0);
        freeMarkerViewResolver.setContentType("text/html;charset=UTF-8");

        return freeMarkerViewResolver;
    }

    /**
     * 备选视图解析器
     * internalResolurceViewResolver
     */
    @Bean
    public InternalResourceViewResolver resolver(){
        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("/WEB-INF/jsp/");
        internalResourceViewResolver.setSuffix(".jsp");
        internalResourceViewResolver.setOrder(1);

        return internalResourceViewResolver;
    }
}
