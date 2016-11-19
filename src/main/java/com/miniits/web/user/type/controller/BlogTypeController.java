package com.miniits.web.user.type.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.type.model.BlogType;
import com.miniits.web.user.type.service.BlogTypeServcice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.util.List;

/**
 * Created by wq on 2016/11/19.
 */

@Service
public class BlogTypeController extends BaseUtil {

    @Autowired
    private BlogTypeServcice blogTypeServcice;

    public Envelop searchTypes() throws ParseException {

        List<BlogType> articleList = blogTypeServcice.search("");
        return new Envelop().setDetailModelList(articleList);
    }

    public Envelop addType(BlogType blogType)  {
        blogType = blogTypeServcice.save(blogType);
        return success(blogType);
    }

    public Envelop delType(int id)  {
        blogTypeServcice.delete(id);
        return success("");
    }
}
