package com.miniits.web.web.collect_blog.dao;

import com.miniits.web.web.collect_blog.model.CollectBlog;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by wq on 2016/10/8.
 */

public interface ICollectBlogRepository extends PagingAndSortingRepository<CollectBlog,String> {

}
