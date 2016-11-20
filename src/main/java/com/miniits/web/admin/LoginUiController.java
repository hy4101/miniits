package com.miniits.web.admin;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.user.controller.UserController;
import com.miniits.web.web.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wq on 2016/10/5.
 * <p>
 * 系统登入
 * 用户登入
 * 管理员登入
 */

@Controller
@RequestMapping("/")
public class LoginUiController extends BaseUtil {

    @Autowired
    private UserController controller;

    /**
     * 进入登入页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/admin/login")
    public String adminLogin(Model model) {
        model.addAttribute("boo", true);
        return "/admin/login/index";
    }


    /**
     * 管理员登入
     * 登入成功后使用redirect重定向功能（防止刷新后重新调用该方法，避免重新查询数据库），进去系统主页，
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public String login(User user, HttpServletRequest request, Model model) {

        Envelop envelop = controller.login(user);
        if (envelop.isSuccessFlg()) {
            request.getSession().setAttribute("admin", envelop.getObj());
            return "redirect:/admin";
        } else {
            model.addAttribute("boo", false);
            return "/admin/login/index";
        }
    }

    /**
     * 登入成功后进去管理系统后台主页
     *
     * @return
     */
    @RequestMapping("/admin")
    public String admin() {
        return "/admin/index";
    }
}