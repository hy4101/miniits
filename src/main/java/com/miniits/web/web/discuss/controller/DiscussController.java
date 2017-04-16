package com.miniits.web.web.discuss.controller;

import com.miniits.commons.model.WDiscuss;
import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.discuss.service.DiscussService;
import com.miniits.web.web.user.model.User;
import com.miniits.web.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wq on 2016/11/27.
 */

@Service
public class DiscussController extends BaseUtil {

    @Autowired
    private DiscussService discussService;

    @Autowired
    private UserService userService;

    public Envelop saveDiscuss(Discuss discuss) {
        discuss = discussService.save(discuss);
        return success(discuss);
    }

    public Envelop getDiscuss(String blogId) {

        List<Discuss> discussList = discussService.findDiscussByBlogId(blogId);
        List<WDiscuss> wDiscussList = (List<WDiscuss>) convertToModels(discussList, new ArrayList<WDiscuss>(discussList.size()), WDiscuss.class, null);

        for (WDiscuss wDiscuss : wDiscussList) {
            if (wDiscuss.getUserId() != null) {
                User user = userService.retrieve(wDiscuss.getUserId());
                wDiscuss.setUserName(user.getUserName());
            } else
                wDiscuss.setUserName("游客");
        }

        return getResultList(wDiscussList);
    }
}
