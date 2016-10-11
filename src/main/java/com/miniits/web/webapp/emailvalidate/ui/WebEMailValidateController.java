package com.miniits.web.webapp.emailvalidate.ui;

import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.webapp.emailvalidate.controller.EMailValidateController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/8.
 */

@Controller
@RequestMapping("")
public class WebEMailValidateController extends BaseUtil {

    @Autowired
    private EMailValidateController eMailValidateController;

}
