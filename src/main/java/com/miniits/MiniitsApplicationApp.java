package com.miniits;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.support.SpringBootServletInitializer;


/**
 * Created by wq on 2016/9/27.
 */

@ServletComponentScan
@SpringBootApplication
public class MiniitsApplicationApp extends SpringBootServletInitializer {

    /**
     * 实现SpringBootServletInitializer可以让spring-boot项目在web容器中运行
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        builder.sources(this.getClass());
        return super.configure(builder);
    }

    public static void main(String[] agrs){
        SpringApplication.run(MiniitsApplicationApp.class,agrs);
    }
}
