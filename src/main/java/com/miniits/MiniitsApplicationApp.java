package com.miniits;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;


/**
 * Created by wq on 2016/9/27.
 */

@ServletComponentScan
@SpringBootApplication
public class MiniitsApplicationApp {

    public static void main(String[] agrs){
        SpringApplication.run(MiniitsApplicationApp.class,agrs);
    }
}
