package com.miniits.web.user.blog.dao;

import com.miniits.web.user.blog.model.Blog;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by wq on 2016/10/20.
 */
public interface IBlogRepository extends PagingAndSortingRepository<Blog,String> {
}
