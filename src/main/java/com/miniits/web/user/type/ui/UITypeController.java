package com.miniits.web.user.type.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.type.controller.BlogTypeController;
import com.miniits.web.user.type.model.BlogType;
import com.miniits.web.web.aop.Filters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;

/**
 * Created by wq on 2016/11/1.
 */

@Controller
@RequestMapping("/type")
public class UITypeController extends BaseUtil {

    @Autowired
    private BlogTypeController blogTypeController;

    @RequestMapping("/initialTypeManage")
    public String initialTypeManage() {
        return "/user/setting/typeManage";
    }

    @RequestMapping("/initialArticleManages")
    public String initialArticleManages() {
        return "/user/setting/articleManages";
    }

    @RequestMapping("/getTypes")
    @ResponseBody
    public Object getTypes() {
        Envelop envelop = null;
        try {
            envelop = blogTypeController.searchTypes();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return envelop.getDetailModelList();
    }

    @Filters(name = {"q"})
    @RequestMapping("/addType")
    @ResponseBody
    public Object addType(String dataModel) {
        BlogType blogType = toModel(dataModel,BlogType.class);
        return blogTypeController.addType(blogType);
    }

    @RequestMapping("/delType")
    @ResponseBody
    public Object delType(int id) {
        return blogTypeController.delType(id);
    }
}