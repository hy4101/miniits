package com.miniits.web.web.sortware.service;
import com.miniits.commons.utils.web.BaseUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String spring(){
        return "/web/sortware/framework/spring_index";
    }

    @RequestMapping("/spring_boot.html")
    public String springBoot(){
        return "/web/sortware/spring_boot_index";
    }
}
