<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2016/11/1
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <title>设置-MINIITS.COM</title>
</head>
<body gap="迷你科技">
<style type="text/css">
    #browser_err {
        display: none;
        background: #FFFF88;
        text-align: center;
        font-size: 16px;
        line-height: 1.3;
        border-bottom: 1px solid #808080;
        padding: 5px 0;
    }

    #browser_err a {
        color: #4D7CD9;
    }
</style>
<div id="browser_err">
    为保证更好的平台体验，推荐下载使用<a target="_blank"
                        href="http://www.baidu.com/s?ie=UTF-8&amp;wd=%E8%B0%B7%E6%AD%8C%E6%B5%8F%E8%A7%88%E5%99%A8">谷歌浏览器</a>，或者浏览器的极速模式。
     <span class="slink j_close">知道了</span>
</div>
<div id="pagelet-header" gap="^用户profile">
    <div class="shead">
        <div class="shead_wrap">
            <a href="${rootPath}/index.html"><img src="${rootPath}/resources/commons/images/logo.png"></a>
            <div class="shead_status">
            </div>
            <div class="shead_right">
                <div class="sys-msg">
                    <div class="sys-msg-entity" ga="消息" data-node="sys_msg_entity">
                        <i class="sys-msg-sum" data-node="sys_msg_sum" style="display: inline;">1</i>
                    </div>
                    <div class="sys-msg-important" data-node="sys_msg_important_inform">
                        <div class="sys-msg-important-inner">
                            <ul class="sys-msg-impor-con" data-node="sys_msg_impor_con"></ul>
                            <i class="sys-msg-close" data-node="sys_msg_close"></i>
                        </div>
                    </div>
                </div>
                <div class="user-panel">
                    <div class="information">
                        <a href="http://www.toutiao.com/m51186810061/" target="_blank" title="mini科技的全部文章" ga="媒体主页">
                            <div class="new_user_avatar">
                                <img src="https://p.pstatp.com/large/e58000ba87c04afaa01">
                            </div>
                            <div class="new_user_info">
                                <div class="new_user_type">
									<span class="user_type">
                                        个人
                                            - 新手
									</span>
                                </div>
                                <div class="new_user_name"><span>mini科技</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="author_dashbord">
                        <ul>
                            <li class="">
                                <i class=""></i>
                                <span class="new_author">作者</span>
                            </li>
                            <li class="authors_list top"><a href="http://web.toutiao.com/user/3029883585/updates/"
                                                            target="_blank" title="mini科技的个人主页" ga="头条用户主页">mini科技</a>
                            </li>
                            <li class="new_logout">
                                <i class=""></i>
                                <a href="http://web.toutiao.com/auth/logout/?next=http%3A%2F%2Fmp.toutiao.com" ga="退出$">退出</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div id="scontent" style="visibility: visible;">
    <div class="wrap1 sclearfix" style="width: 100%">
        <div class="menu" style="margin-left: 50px">
            <div class="menu_block">
                <a href="http://localhost:8080/miniits/index.html" class="menu_h1  menu_main alone"><i></i>主页</a>
            </div>
            <div class="menu_block">
                <a style="cursor: pointer;" onclick="javascript:settingFun('typeManages');"
                   class="menu_h1  new_article alone" ga="发表文章统计">
                    <i></i>类别管理</a>
            </div>

            <div class="menu_block">
                <a class="menu_h1 menu_article"><i></i>内容管理</a>
                <a style="cursor: pointer;" onclick="javascript:settingFun('articleManages');"
                   class="menu_h2  selected  ">文章管理</a>
                <a href="/miniits/user/editor.html" class="menu_h2 ">发表帖子</a>
            </div>
        </div>
        <div class="stage" id="div_count_msg" style="width: 80%">
        </div>
    </div>
</div>
<div class="sfoot_p">
    <div class="sfoot">
        <div>
            <a target="_blank" class="sfoot_about" href="http://web.toutiao.com/about/">关于迷你科技</a>|
            <a target="_blank" href="/agreement/" class="sfoot_agreement">用户协议</a>|
            <a target="_blank" href="/infringement/" class="sfoot_agreement">侵权投诉</a>|
            <a target="_blank" href="http://web.toutiao.com/contact/" class="sfoot_contact">联系我们</a>
            © 2016 toutiao.com All Rights Reserved
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/setting/setting.css"/>
<script src="${rootPath}/resources/user/setting/setting.js"></script>
</body>
</html>
