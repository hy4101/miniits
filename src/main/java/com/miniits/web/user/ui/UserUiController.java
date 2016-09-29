package com.miniits.web.user.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUiUtil;
import com.miniits.web.user.controller.UserController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;

/**
 * Created by wq on 2016/9/29.
 */

@Controller
@RequestMapping("/user")
public class UserUiController extends BaseUiUtil {

    @Autowired
    private UserController controller;

    @RequestMapping("/searchUsers")
    @ResponseBody
    public ModelAndView searchUsers(ModelMap modelMap) throws ParseException {
        Envelop envelop = controller.searchUsers("","","",1,1);
        String userMsg = toJson(envelop);
        modelMap.put("userMsg",userMsg);
        return new ModelAndView("user",modelMap);
    }
}
