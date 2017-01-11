package com.miniits.web.web.discuss.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.discuss.controller.DiscussController;
import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.user.model.User;
import org.apache.catalina.connector.RequestFacade;
import org.apache.http.protocol.HTTP;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by wq on 2016/11/27.
 */

@Controller
@RequestMapping("/discuss")
public class UIDiscussController extends BaseUtil {

    @Autowired
    private DiscussController discussController;

    @RequestMapping("getDiscuss")
    @ResponseBody
    public Object getDiscuss(String blogId) {
        Envelop envelop = discussController.getDiscuss(blogId);
        return envelop.getDetailModelList();
    }

    @RequestMapping("new_discuss")
    @ResponseBody
    public Object newDiscuss(Discuss model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        model.setDiscussDate(new Date());
        model.setUserId(user.getId());
        Envelop envelop = discussController.saveDiscuss(model);
        return envelop;
    }

}