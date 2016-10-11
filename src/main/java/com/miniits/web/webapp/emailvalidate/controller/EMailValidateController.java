package com.miniits.web.webapp.emailvalidate.controller;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.webapp.emailvalidate.model.EMailValidate;
import com.miniits.web.webapp.emailvalidate.service.EMailValidateService;
import com.miniits.web.webapp.user.model.User;
import com.miniits.web.webapp.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by wq on 2016/10/8.
 */

@Repository
public class EMailValidateController extends BaseUtil {

    @Autowired
    private EMailValidateService eMailValidateService;

    @Autowired
    private UserService userService;

    public Envelop saveEMailValidate(EMailValidate eMailValidate){

        eMailValidate = eMailValidateService.save(eMailValidate);
        return success(eMailValidate);
    }

    public Envelop activate(EMailValidate eMailValidate){
        String code = eMailValidate.getValidateCode();

        Date date = new Date();
        List<EMailValidate> eMailValidateList = eMailValidateService.findByEmail(eMailValidate.getEmail());
        User user = userService.retrieve(eMailValidateList.get(0).getUserId());
        if (StringUtils.isEmpty(user))
            return error("用户激活失败,无此用户，请重新注册！");
        else if (eMailValidate.getStatus() == 1)
            return error("用户已经激活");
        else if(!eMailValidate.getValidateCode().equals(code))
            return error("激活码无效，请重新注册");
        else if (!date.before(getLastActivateTime(eMailValidateList.get(0).getRegisterTime()))){
            return error("激活时间已过期，请重新发送激活链接");
        }else
            eMailValidateService.udate(eMailValidate.getId(),1);
        return success("");
    }

    public Date getLastActivateTime(Date registerTime) {
        Calendar cl = Calendar.getInstance();
        cl.setTime(registerTime);
        cl.add(Calendar.DATE , 2);

        return cl.getTime();
    }
}
