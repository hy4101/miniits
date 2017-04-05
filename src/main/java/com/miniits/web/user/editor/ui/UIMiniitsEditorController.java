package com.miniits.web.user.editor.ui;

import com.miniits.web.user.blog.controller.BlogController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wq on 2016/10/24.
 */

@Controller
@RequestMapping("/user")
public class UIMiniitsEditorController {

    @Autowired
    private BlogController articleController;

    @RequestMapping("/editor.html")
    public ModelAndView miniitsEditor(String id, ModelMap modelMap){
        modelMap.put("id",id);
        return new ModelAndView("/user/editor/index",modelMap);
    }

}