package com.miniits.web;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUiUtil;
import com.miniits.web.webapp.user.controller.UserController;
import com.miniits.web.webapp.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wq on 2016/10/5.
 *
 * 系统登入
 *      用户登入
 *      管理员登入
 */

@Controller
@RequestMapping("")
public class LoginUiController extends BaseUiUtil {

    @Autowired
    private UserController controller;

    @RequestMapping("/admin/login")
    public String adminLogin(User user, HttpServletRequest request){

//        Envelop envelop = controller.login(user);
//        if (envelop.isSuccessFlg()){
//            request.getSession().setAttribute("admin",envelop.getObj());
            return "/admin/login/index";
//        }
//        else
//            return "/admin/login/index";
    }
}
