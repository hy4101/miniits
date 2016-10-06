<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/8/25
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    (function ($, win) {
        $(function () {

            var menuData = null;
            var comUrl = '${rootPath}'+"/admin";
            function initData() {
                menuData = [
                    {text:'用户',url:comUrl+"/user/getUser"},
                    {
                        text: '会员管理', isexpand: false, children: [
                        <%--<shiro:hasPermission name="user:query">{url: comUrl + "/user/initial", text: "用户"},</shiro:hasPermission>--%>
                        {url: comUrl + "/user/initial", text: "用户"},
                        {url: comUrl + '/memberRegime/initial', text: "会员组"},
                        {url: comUrl + '/memberUser/initial', text: "会员用户"},
                        {url: comUrl + '/memberaccount/initial', text: "会员资金账户"},
                        {url: comUrl + "/org/initial", text: "机构"},
                        <%--<shiro:hasPermission name="user:query">{url: comUrl + "/order/initial", text: "订单"},</shiro:hasPermission>--%>
                        {url: comUrl + "/order/initial", text: "订单"}
                    ]
                    },
                    {
                        text: '数据', isexpand: false, children: [
                        {url: comUrl + "", text: "订单"},
                        {
                            text: "test", isexpand: false, children: [
                            {url: comUrl + "df", text: "url"}
                        ]
                        }
                    ]
                    },
                    {
                        text:'组织机构管理',isexpand:false,children:[
                        {url:comUrl+"/org/initial",text:'机构管理'},
                        {url:comUrl+"/userOrg/initial",text:'人员管理'}
                    ]
                    },
                    {
                        text:'权限管理',children:[
                        {url:comUrl+"/permissionAllot/initial",text:'权限分配'},
                        {url:comUrl+"/menu/initial",text:'菜单管理'},
//                        {url:comUrl+"/permission/initial",text:'功能管理'}
                    ]
                    }
                ];
            }

            initData();

            win.getMenuData = function () {
                return menuData;
            };
        })
    })(jQuery, window)
</script>