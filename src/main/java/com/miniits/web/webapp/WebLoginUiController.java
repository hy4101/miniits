package com.miniits.web.webapp;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUiUtil;
import com.miniits.web.webapp.user.controller.UserController;
import com.miniits.web.webapp.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wq on 2016/10/5.
 * <p>
 * web登入
 * 用户登入
 */

@Controller
@RequestMapping("/")
public class WebLoginUiController extends BaseUiUtil {

    @Autowired
    private UserController controller;

    /**
     * 进入登入页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/user/login")
    public String adminLogin(Model model,HttpServletRequest request) {
        model.addAttribute("boo", true);
        return "/webapp/login/index";
    }


    /**
     * 管理员登入
     * 登入成功后使用redirect重定向功能（防止刷新后重新调用该方法，避免重新查询数据库），进去系统主页，
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/web/login")
    public String userLogin(User user, HttpServletRequest request, Model model) {

        Envelop envelop = controller.login(user);
        if (envelop.isSuccessFlg()) {
            request.getSession().setAttribute("user", envelop.getObj());
            return "redirect:/";
        } else {
            model.addAttribute("boo", false);
            return "/webapp/login/index";
        }
    }

    /**
     * 登入成功后进去管理系统后台主页
     *
     * @return
     */
    @RequestMapping("/")
    public String admin(HttpServletRequest request) {
//        String historyUrl = (String) request.getSession().getAttribute("historyUrl");
//        if (StringUtils.isEmpty(historyUrl))
            return "/webapp/index/index";
//        else
//            return "redicrect:" + historyUrl;
    }
}