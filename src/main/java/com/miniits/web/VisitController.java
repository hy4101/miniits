package com.miniits.web;/**
 * Created by wq on 2017/4/9.
 */

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.user.blog.controller.BlogController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: wq
 * @Date:
 * @Time: <p>
 * Description:
 */
@Controller
@RequestMapping("/")
public class VisitController extends BaseUtil {

    @Autowired
    private BlogController articleController;

    @RequestMapping(value = "{type}/{id}.html")
    public ModelAndView getArticle(@PathVariable(value = "id") int id,
                                   @PathVariable(value = "type") String type, ModelMap modelMap) {
        Envelop envelop = articleController.getArticle(id);
        modelMap.put("data", toJson(envelop));
        return new ModelAndView("/web/sortware/spring_boot_index", modelMap);
    }
}
