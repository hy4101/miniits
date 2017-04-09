package com.miniits.web.web.sortware.service;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
public class SoftwareController extends BaseUtil {

    @RequestMapping("/spring.html")
    public String spring() {
        return "/web/sortware/framework/spring_index";
    }

    @RequestMapping("/springBoot.html")
    public ModelAndView springBoot(ModelMap modelMap) {
        modelMap.put("data", toJson(new Envelop(true)));
        return new ModelAndView("/web/sortware/spring_boot_index", modelMap);
    }
}
