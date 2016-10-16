package com.miniits.web.webapp.user.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.web.webapp.demo.model.TUser;
import com.miniits.web.webapp.user.dao.IUserRepository;
import com.miniits.web.webapp.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wq on 2016/9/29.
 */

@Service
@Transactional
public class UserService extends BaseJpaService<User,IUserRepository> {

    @Autowired
    private IUserRepository iUserRepository;

    public User findByUserName(String userName){
        return iUserRepository.findByUserName(userName);
    }

//    TEST
public TUser findByName(String a){
    return null;
}
//test
public TUser getList(){
    return null;
}
}
