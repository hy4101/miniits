package com.miniits.web.user.setting.ui;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/11/1.
 */

@Controller
@RequestMapping("/user")
public class UISettingController {

    @RequestMapping("/setting.html")
    public String miniitsEditor(){
        return "/user/setting/index";
    }
}
