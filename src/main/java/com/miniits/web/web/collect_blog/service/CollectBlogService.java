package com.miniits.web.web.collect_blog.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.web.web.collect_blog.dao.ICollectBlogRepository;
import com.miniits.web.web.collect_blog.model.CollectBlog;
import com.miniits.web.web.discuss.dao.IDiscussRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by wq on 2016/10/8.
 */

@Service
@Transactional
public class CollectBlogService extends BaseJpaService<CollectBlog,ICollectBlogRepository> {

}