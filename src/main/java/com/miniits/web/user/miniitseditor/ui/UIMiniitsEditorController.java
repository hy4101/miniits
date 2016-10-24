package com.miniits.web.user.miniitseditor.ui;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by wq on 2016/10/24.
 */

@Controller
@RequestMapping("/user")
public class UIMiniitsEditorController {

    @RequestMapping("/editor.html")
    public String miniitsEditor(){
        return "/user/minitseditor/index";
    }
}