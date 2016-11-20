package com.miniits.web.web.user.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.MD5.MD5Util;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.web.user.model.User;
import com.miniits.web.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.text.ParseException;
import java.util.List;

/**
 * Created by wq on 2016/9/29.
 */

@Service
public class UserController extends BaseUtil {

    @Autowired
    private UserService userService;

    @Autowired
    private MD5Util md5Util;

    public Envelop searchUsers(String fields, String filters, String sotrs, int page, int size) throws ParseException {

        List<User> userList = userService.search(fields, filters, sotrs, page, size);

        Envelop envelop = getResult(userList, userService.getCount(filters), page, size);
        return envelop;
    }

    public Envelop getUser(User user) {
        user = getUserById(user.getId());
        if (StringUtils.isEmpty(user))
            return error("无此用户");
        return success(user);
    }

    public Envelop login(User user) {
        String password = user.getPassword();
        String MD5Password = md5Util.hashStr(password);

        user = userService.findByUserName(user.getUserName());
        if (StringUtils.isEmpty(user))
            return error("密码或用户名错误");
        else if (user.getPassword().equals(MD5Password)) {
            return success(user);
        } else
            return error("密码或用户名错误");
    }

    public Envelop save(User user){
        return success(userService.save(user));
    }

    public User getUserById(String id) {
        return userService.retrieve(id);
    }

}
