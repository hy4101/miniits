package com.miniits.web.user.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/12.
 */

@Controller()
@RequestMapping("/")
public class IndexController {

    @RequestMapping("/dynamic.html")
    public String userAdminIndex(){
        return "/user/index/index";
    }
}