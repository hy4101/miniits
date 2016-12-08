package com.miniits.web.web.collect_blog.controller;

import com.miniits.commons.model.WDiscuss;
import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.collect_blog.model.CollectBlog;
import com.miniits.web.web.collect_blog.service.CollectBlogService;
import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.discuss.service.DiscussService;
import com.miniits.web.web.user.model.User;
import com.miniits.web.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wq on 2016/11/27.
 */

@Service
public class CollectBlogController extends BaseUtil {

    @Autowired
    private CollectBlogService collectBlogService;

    public Envelop getCollectBlogs(String userId) throws ParseException {
        List<CollectBlog> discussList = collectBlogService.search("userId="+userId);
        return getResultList(discussList);
    }
}
