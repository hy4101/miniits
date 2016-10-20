package com.miniits.web.webapp.user.ui;

import com.miniits.commons.shiro.controller.ShiroController;
import com.miniits.commons.utils.MD5.MD5Util;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.webapp.user.controller.UserController;
import com.miniits.web.webapp.user.model.User;
import com.miniits.web.webapp.user.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by wq on 2016/10/5.
 * <p>
 * web登入
 * 用户登入
 */

@Controller
@RequestMapping("/")
public class WebLoginController extends BaseUtil {

    private static final Logger logger = LoggerFactory.getLogger(ShiroController.class);

    @Autowired
    private UserController controller;

    @Autowired
    private UserService userDao;

    @Autowired
    private MD5Util md5Util;

    /**
     * 进入登入页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/user/login.html")
    public String adminLogin(Model model, HttpServletRequest request) {
        Subject currentUser = SecurityUtils.getSubject();
        boolean bo = currentUser.isAuthenticated();
        if (currentUser.isAuthenticated()) {
            return "redirect:/";
        } else {
            model.addAttribute("boo", true);
            return "/web/login/index";
        }
    }


//    @RequestMapping("/web/login")
//    public String userLogin(User user, HttpServletRequest request, Model model) {
//
//        Envelop envelop = controller.login(user);
//        if (envelop.isSuccessFlg()) {
//            request.getSession().setAttribute("user", envelop.getObj());
//            return "redirect:/";
//        } else {
//            model.addAttribute("boo", false);
//            return "/webapp/login/index";
//        }
//    }

    /**
     * 登入成功后跳转到目标页
     *
     * @return
     */
    @RequestMapping("/")
    public String admin(HttpServletRequest request, Model model) {
        model.addAttribute("user", request.getSession().getAttribute("user"));
        return "/redirect";
    }


    /**
     * 用户登入
     * 登入成功后使用redirect重定向功能（防止刷新后重新调用该方法，避免重新查询数据库），进去系统主页，
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping(value = "/web/login", method = RequestMethod.POST)
    public String login(@Valid User user, BindingResult bindingResult, RedirectAttributes redirectAttributes, Model model, HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            return "login";
        }

        user.setPassword(md5Util.hashStr(user.getPassword()));
        String username = user.getUserName();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(), user.getPassword());
        //获取当前的Subject
        Subject currentUser = SecurityUtils.getSubject();
        try {
            //在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
            //每个Realm都能在必要时对提交的AuthenticationTokens作出反应
            //所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
            logger.info("对用户[" + username + "]进行登录验证..验证开始");
            currentUser.login(token);
            logger.info("对用户[" + username + "]进行登录验证..验证通过");
        } catch (UnknownAccountException uae) {
            logger.info("对用户[" + username + "]进行登录验证..验证未通过,未知账户");
            redirectAttributes.addFlashAttribute("message", "未知账户");
        } catch (IncorrectCredentialsException ice) {
            logger.info("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");
            redirectAttributes.addFlashAttribute("message", "密码不正确");
        } catch (LockedAccountException lae) {
            logger.info("对用户[" + username + "]进行登录验证..验证未通过,账户已锁定");
            redirectAttributes.addFlashAttribute("message", "账户已锁定");
        } catch (ExcessiveAttemptsException eae) {
            logger.info("对用户[" + username + "]进行登录验证..验证未通过,错误次数过多");
            redirectAttributes.addFlashAttribute("message", "用户名或密码错误次数过多");
        } catch (AuthenticationException ae) {
            //通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
            logger.info("对用户[" + username + "]进行登录验证..验证未通过,堆栈轨迹如下");
            ae.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "用户名或密码不正确");
        }
        //验证是否登录成功
        if (currentUser.isAuthenticated()) {
            User newUser =userDao.findByUserName(token.getUsername());
            request.getSession().setAttribute("user", newUser);
            logger.info("用户[" + username + "]登录认证通过(这里可以进行一些认证通过后的一些系统参数初始化操作)");
            return "redirect:/";
        } else {
            token.clear();
            model.addAttribute("boo", false);
            return "/web/login/index";
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(RedirectAttributes redirectAttributes) {
        //使用权限管理工具进行用户的退出，跳出登录，给出提示信息
        SecurityUtils.getSubject().logout();
        return "redirect:/";
    }

//    @RequiresAuthentication
//    @RequestMapping("/tests")
//    public void stat() {
//        logger.info("sdf");
//    }

//    @ExceptionHandler({AuthorizationException.class})
//    @ResponseStatus(HttpStatus.UNAUTHORIZED)
//    public ModelAndView processUnauthenticatedException(NativeWebRequest request, UnauthorizedException ex) {
//        ModelAndView mv = new ModelAndView();
//        mv.addObject("ex", ex);
//        // 为了区分，跳转掉另一个视图
//        mv.setViewName("error/unauthorized");
//        return mv;
//    }
}