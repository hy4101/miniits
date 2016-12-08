package com.miniits.web.web.collect_blog.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.collect_blog.controller.CollectBlogController;
import com.miniits.web.web.discuss.controller.DiscussController;
import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.util.Date;

/**
 * Created by wq on 2016/11/27.
 */

@Controller
@RequestMapping("/user/collect_blog")
public class UICollectBlogController extends BaseUtil {

    @Autowired
    private CollectBlogController collectBlogController;

    @RequestMapping("getCollectBlogs")
    @ResponseBody
    public Object getDiscuss(String userId,HttpServletRequest request) throws ParseException {
        User user = (User) request.getSession().getAttribute("user");
        Envelop envelop = collectBlogController.getCollectBlogs(user.getId());
        return envelop;
    }

}
