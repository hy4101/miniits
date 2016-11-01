package com.miniits.web.user.blog.ui;

import com.miniits.commons.utils.Envelop;
import com.miniits.commons.utils.web.BaseUtil;
import com.miniits.web.demo.TreeDemo;
import com.miniits.web.user.article.controller.ArticleController;
import com.miniits.web.webapp.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wq on 2016/10/20.
 */

@Controller
@RequestMapping("/blog")
public class UIBlogController extends BaseUtil {

    @Autowired
    private ArticleController articleController;

    @RequestMapping("{userName}")
    public String blog(@PathVariable String userName){
        return "/user/blog/index";
    }

    @RequestMapping("/getTypes")
    @ResponseBody
    public List<TreeDemo> getTypes(){

        List<TreeDemo> treeDemoArrayList = new ArrayList<>();
        TreeDemo treeDemo = new TreeDemo();
        treeDemo.setId("1");
        treeDemo.setpId("0");
        treeDemo.setName("test1");
        treeDemoArrayList.add(treeDemo);

        TreeDemo treeDemo1 = new TreeDemo();
        treeDemo1.setId("2");
        treeDemo1.setpId("1");
        treeDemo1.setName("343");
        treeDemoArrayList.add(treeDemo1);

        TreeDemo treeDemo11 = new TreeDemo();
        treeDemo11.setId("3");
        treeDemo11.setpId("1");
        treeDemo11.setName("343");
        treeDemoArrayList.add(treeDemo11);

        return treeDemoArrayList;
    }

}
