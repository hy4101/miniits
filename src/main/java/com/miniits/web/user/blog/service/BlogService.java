package com.miniits.web.user.blog.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.web.user.blog.dao.IBlogRepository;
import com.miniits.web.user.blog.model.Blog;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wq on 2016/10/20.
 */

@Service
@Transactional
public class BlogService extends BaseJpaService<Blog,IBlogRepository> {

}
