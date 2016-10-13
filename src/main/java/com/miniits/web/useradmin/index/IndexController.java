package com.miniits.web.useradmin.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/12.
 */

@Controller()
@RequestMapping("/user")
public class IndexController {

    @RequestMapping("/userAdmin")
    public String userAdminIndex(){
        return "/useradmin/index";
    }
}