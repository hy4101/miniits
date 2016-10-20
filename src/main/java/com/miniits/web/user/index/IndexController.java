package com.miniits.web.user.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/12.
 */

@Controller()
@RequestMapping("/user")
public class IndexController {

    @RequestMapping("/userAdmin.html")
    public String userAdminIndex(){
        return "/user/index/index";
    }
}