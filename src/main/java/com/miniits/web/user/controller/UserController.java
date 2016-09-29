package com.miniits.web.user.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUiUtil;
import com.miniits.web.user.model.User;
import com.miniits.web.user.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.util.List;

/**
 * Created by wq on 2016/9/29.
 */

@Service
public class UserController extends BaseUiUtil {

    @Autowired
    private UserService userService;

    public Envelop searchUsers(String fields, String filters, String sotrs, int page, int size) throws ParseException {

        List<User> userList = userService.search(fields, filters, sotrs, page, size);

        Envelop envelop = getResult(userList, userService.getCount(filters), page, size);
        return envelop;
    }

}
