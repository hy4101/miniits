package com.miniits.web.web.discuss.dao;

import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.emailvalidate.model.EMailValidate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * Created by wq on 2016/10/8.
 */

public interface IDiscussRepository extends PagingAndSortingRepository<Discuss,String> {

    public List<Discuss> findByBlogId(@Param("blogId")String blogId);
}
