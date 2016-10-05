package com.miniits.web.webapp.user.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUiUtil;
import com.miniits.web.webapp.user.controller.UserController;
import com.miniits.web.webapp.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/4.
 */

@Controller("/")
public class LoginUiController extends BaseUiUtil {

    @Autowired
    private UserController controller;

//    @RequestMapping("/login")
//    public String login(User user) {
//        Envelop envelop = controller.login(user);
//        if (envelop.isSuccessFlg())
//            return "/user/login";
//         else
//             return "index";
//    }
}
