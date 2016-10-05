package com.miniits.web.webapp.user.dao;

import com.miniits.web.webapp.user.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created by wq on 2016/9/29.
 */
public interface IUserRepository extends PagingAndSortingRepository<User,String> {

//    @Query("select u from user u where u.userName = :userName")
    User findByUserName(@Param("userName")String userName);
}
