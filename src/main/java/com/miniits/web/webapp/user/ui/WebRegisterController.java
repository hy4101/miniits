package com.miniits.web.webapp.user.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.MD5.MD5Util;
import com.miniits.commons.utils.email.SendEmail;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.webapp.emailvalidate.controller.EMailValidateController;
import com.miniits.web.webapp.emailvalidate.model.EMailValidate;
import com.miniits.web.webapp.user.controller.UserController;
import com.miniits.web.webapp.user.model.User;
import org.hibernate.validator.internal.constraintvalidators.hv.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by wq on 2016/10/7.
 */

@Controller
@RequestMapping("/")
public class WebRegisterController extends BaseUtil {

    @Autowired
    private UserController userController;

    @Autowired
    private EMailValidateController eMailValidateController;

    private static String redirectUrl = "http://localhost:8080/miniits/user/activate";

    /**
     * 进入注册页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/user/register.html")
    public String register(Model model, HttpServletRequest request) {
        model.addAttribute("boo", true);
        return "/webapp/register/index";
    }

    /**
     * 进入注册页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/user/register")
    public String saveRegisterMsg(User user, Model model, HttpServletRequest request) {
        Envelop envelop = null;
        String email = user.geteMail();
        if (!StringUtils.isEmpty(user))
            envelop = userController.save(user);

        if (null != convertToModel(envelop.getObj(), User.class).getId()) {
            EMailValidate eMailValidate = new EMailValidate();
            eMailValidate.setEmail(user.geteMail());
            eMailValidate.setUserId(user.getId());
            eMailValidate.setRegisterTime(new Date());
            eMailValidate.setStatus(0);
            eMailValidate.setValidateCode(MD5Util.encode2hex(user.geteMail()));
            envelop = eMailValidateController.saveEMailValidate(eMailValidate);
            if (null != convertToModel(envelop.getObj(), EMailValidate.class).getId()) {
                StringBuffer stringBuffer = new StringBuffer("点击下面\" 立即激活 \" 按键激活账号，48小时生效，若超过48小时请重新发送邮件，链接只能使用一次，请尽快激活！</br>");
                stringBuffer.append("<a href=" + redirectUrl);
                stringBuffer.append("?email=" + email);
                stringBuffer.append("&validateCode=" + eMailValidate.getValidateCode());
                stringBuffer.append(">立即激活</a>");
                //发送邮件
                SendEmail.send(email, stringBuffer.toString());
            }
        }
        model.addAttribute("boo", true);
        return "/webapp/register/index";
    }

    /**
     * 用户邮箱激活
     * @param eMailValidate
     * @return
     */
    @RequestMapping("user/activate")
    public String userActivate(EMailValidate eMailValidate){
         Envelop envelop = eMailValidateController.activate(eMailValidate);
        if (envelop.isSuccessFlg())
            return "";
        return "";
    }
}