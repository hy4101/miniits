//package com.miniits.web.user.controller;
//
//import com.miniits.commons.utils.Envelop;
//import com.miniits.commons.utils.MD5.MD5Util;
//import com.miniits.commons.utils.web.BaseUiUtil;
//import com.miniits.web.user.model.User;
//import com.miniits.web.user.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.util.StringUtils;
//
//import java.text.ParseException;
//import java.util.List;
//
///**
// * Created by wq on 2016/9/29.
// */
//
//@Service
//public class UserController extends BaseUiUtil {
//
//    @Autowired
//    private UserService userService;
//
//    @Autowired
//    private MD5Util md5Util;
//
//    public Envelop searchUsers(String fields, String filters, String sotrs, int page, int size) throws ParseException {
//
//        List<User> userList = userService.search(fields, filters, sotrs, page, size);
//
//        Envelop envelop = getResult(userList, userService.getCount(filters), page, size);
//        return envelop;
//    }
//
//    public Envelop login(User user) {
//        String password = user.getPassword();
//        String MD5Password = md5Util.hashStr(password);
//
//        user = getUserById(user.getId());
//        if (StringUtils.isEmpty(user))
//            return error("密码或用户名错误");
//        else if (user.getPassword().equals(MD5Password)) {
//            return success();
//        } else
//            return error("密码或用户名错误");
//    }
//
//    public User getUserById(String id) {
//        return userService.retrieve(id);
//    }
//
//}
