package com.miniits.web.admin.user.ui;

import com.miniits.commons.utils.web.BaseUiUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/6.
 */

@Controller
@RequestMapping("admin/user")
public class AdminUserUiController extends BaseUiUtil {

    @Value("${service-api.url}")
    private String comUrl;

    @RequestMapping("/getUser")
    public void getUser(){
        System.out.print("a");
    }
}
