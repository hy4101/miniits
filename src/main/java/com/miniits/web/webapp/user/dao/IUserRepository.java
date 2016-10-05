package com.miniits.web.webapp.user.dao;

import com.miniits.web.webapp.user.model.User;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by wq on 2016/9/29.
 */
public interface IUserRepository extends PagingAndSortingRepository<User,String> {

}
