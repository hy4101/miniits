package com.miniits.web.user.editor.ui;

import com.miniits.web.user.blog.controller.BlogController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wq on 2016/10/24.
 */

@Controller
@RequestMapping("/user")
public class UIMiniitsEditorController {

    @Autowired
    private BlogController articleController;

    @RequestMapping("/editor.html")
    public String miniitsEditor(){
        return "/user/editor/index";
    }


}