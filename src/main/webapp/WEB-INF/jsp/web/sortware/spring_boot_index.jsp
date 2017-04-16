<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Spring Boot中文网-迷你科技</title>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="Spring Boot中文网">
    <meta name="author" content="Bootstrap中文网">
    <script src="${rootPath}/resources/commons/js/util/pubsub.js"></script>


    <script type="text/javascript" src="${rootPath}/resources/commons/comment/js/zyComment.js"></script>
    <link rel="stylesheet" href="${rootPath}/resources/commons/comment/css/semantic.css" type="text/css"/>
    <link rel="stylesheet" href="${rootPath}/resources/commons/comment/css/zyComment.css" type="text/css"/>

    <script>
        (function ($, win) {
            $(function () {
                var settingMaster = null;
                var Util = $.Util;
                var url = Util.getUrl() + "/type/";
                var newsData = null;
                var data = ${data};
                var id = "";
                var starMsg = "";
                var blogName = "";

                function pageInit() {
                    settingMaster.init();
                }

                settingMaster = {

                    $newsName: $("#div_news_name"),
                    $contentMsg: $("#new_content_msg"),
                    $blogName: $("#h_blog_name"),
                    $start: $("#a_start"),

                    init: function () {
                        var self = this;
                        self.initForm();
                    },

                    initForm: function () {
                        var self = this;
                        if (!Util.isStrEmpty(data.obj)) {
                            data = data.obj;
                            id = data.id;
                            $("#inp_blog_id").val(id);
                            starMsg = self.$contentMsg.html();
                            blogName = self.$blogName.html();
                            self.$contentMsg.html("");
                            self.$contentMsg.html(data.text);
                            self.$blogName.html(data.name);
                        }
                        $.ajax({
                            url: Util.getUrl() + '/user/article/getArticles',
                            data: {filters: "type=50", page: 1, rows: 50},
                            dataType: "json",
                            success: function (data) {
                                newsData = data.detailModelList;
                                var html = "";
                                for (var i = 0; i < newsData.length; i++) {
                                    var jaon = newsData[i];
                                    var coloe = "#000000";
                                    if (Util.isStrEquals(id, jaon.id)) {
                                        coloe = "#27AE60"
                                    }
                                    html += '<label><a href="' + Util.getUrl() + '/springBoot/' + jaon.id + '.html" style="color: ' + coloe + '">' + jaon.name + '</a></label><br>'
                                }
                                self.$newsName.append(html);
                            }
                        });
                        self.clicks();
                    },
                    clicks: function () {
                        var self = this;
                        self.$start.click(function () {
                            self.$contentMsg.html(starMsg);
                            self.$blogName.html(blogName)
                        })
                    }
                };
                pageInit();

                var boxHtml = '';
                boxHtml += '<form id="replyBox" class="ui reply form" style="margin-bottom: 60px;">';
                boxHtml += '	<div class="ui  form ">';
                boxHtml += '		<div class="contentField field" >';
                boxHtml += '			<textarea id="commentContent" style=" border: 1px solid #98c0ff;"></textarea>';
                boxHtml += '		</div>';
                boxHtml += '		<div id="publicComment" class="ui button teal submit labeled icon" style="float: right;">';
                boxHtml += '			<i class="icon edit"></i> 提交评论';
                boxHtml += '		</div>';
                boxHtml += '	</div>';
                boxHtml += '</form>';
                window.html = function () {
                    return boxHtml;
                };
                getDiscuss();
                function getDiscuss() {
                    $("#articleComment").empty();
                    $.ajax({
                        url: Util.getUrl() + "/discuss/getDiscuss",
                        data: {blogId: id},
                        dataType: "json",
                        success: function (data) {
                            initComment(data);
                        }
                    })
                }

                function initComment(data) {
                    $("#articleComment").zyComment({
                        "width": "355",
                        "height": "33",
                        "agoComment": data,
                        "callback": function (comment) {
                        }
                    });
                }

                window.comment = function () {
                    getDiscuss();
                };


            })
        })(jQuery, window)
    </script>

    <script type="text/javascript">


    </script>
</head>
<input id="inp_blog_id" style="display: none">
<body>
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        <shiro:guest>
            <a href="${rootPath}/index.html">主页</a>
            <%--<a href="${rootPath}/dynamic.html">动态</a>--%>
            <%--<span>/</span>--%>
            <%--<a href="${rootPath}/blog/<shiro:principal/>">博客</a>--%>
            <%--<span>/</span>--%>
            <%--<a href="${rootPath}/user/login.html" target="_blank">登入</a>--%>
            <%--<span>/</span>--%>
            <%--<a href="${rootPath}/user/register.html">注册</a>--%>
        </shiro:guest>

        <shiro:authenticated>
            <a href="${rootPath}/user/setting.html">设置</a>
            <span>/</span>
            <%--<a href="${rootPath}/dynamic.html">动态</a>--%>
            <%--<span>/</span>--%>
            <%--<a href="${rootPath}/blog/<shiro:principal/>">博客</a>--%>
            <%--<span>/</span>--%>
            <a href="${rootPath}/user/userAdmin.html" target="_blank">主页</a>
            <%--<span>/</span>--%>
            <%--<a href="${rootPath}/logout" target="_blank">退出:</a><shiro:principal/>--%>
        </shiro:authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h1>Spring Boot</h1>
                <p>中文网<br><span
                        class="package-amount">这里是介绍 spring boot 的  这里是介绍 spring boot 的  这里是介绍 spring boot 的  </span>
                </p>
            </div>
        </div>
    </div>
</header>
<div class="f-ww f-mt10 f-mb10">
    <div class="div-body-product-logo f-ah">

        <div class="container-main f-ww">
            <ul class="clearfix">
                <li><a class="item" id="a_start">开始体验</a></li>
                <li><a class="item" href="/miniits/springBoot/3.html">Spring Boot文档</a></li>
                <li><a class="item" onclick="javascript:articleSelect('fans')">Spring Boot项目</a></li>
            </ul>
        </div>

        <div class="div-spring-menu f-dr1c8 f-fl f-mt20">

            <label>Spring Boot 技术交流</label>
            <ul>
                <li>QQ群 :<input value="112773621" readonly="readonly" class="inp-br-b"/></li>
                <li class="f-mt10">QQ群 :<input value="112968486" readonly="readonly" class="inp-br-b"/></li>
            </ul>
            <div id="div_news_name">

            </div>

        </div>
        <div class="div-spring-text f-dr1c8 f-fl f-mt20">
            <label><h2 id="h_blog_name">Spring Boot</h2></label>
            <div id="new_content_msg" style="text-align: left">
                <ul>
                    <li id="li_spring_framework" vaa="springBoot.html">
                        <h2 style="margin: 1.5em 0px 0.5em; font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; color: rgb(51, 51, 51); text-rendering: optimizeLegibility; font-size: 18px; text-indent: 1em; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            Spring Boot简介
                        </h2>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                        <span style="font-size: 18px;">如何轻松的搭建一个spring boot 应用Spring Boot是轻量级的Java EE框架，可快速、<span
                                style="color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; line-height: 27.2px; text-indent: 16px; background-color: rgb(254, 254, 254);">独立的</span>进行<span
                                style="color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; line-height: 27.2px; text-indent: 16px; background-color: rgb(254, 254, 254);">产品级别的Spring应用</span>开发，spring boot框架为我们提供了开箱即用的设置，你可以有条不紊的开始编程，省去繁琐的xml配置文件，让你有跟多的时间注重于功能和业务上。</span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px; line-height: 1.5em; text-indent: 1em;">Spring Boot优点、理念</span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px; line-height: 1.5em; text-indent: 1em;">&nbsp;&nbsp;&nbsp;&nbsp;为所有的Spring、Java开发者提供快速的、简单的应用开发</span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px; line-height: 1.5em; text-indent: 1em;">&nbsp;&nbsp;&nbsp;&nbsp;不需要代码生成和XML配置<br/></span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px; line-height: 1.5em; text-indent: 1em;">&nbsp;&nbsp;&nbsp;&nbsp;...<br/></span>
                        </p>

                        <h2 style="margin: 1.5em 0px 0.5em; font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; color: rgb(51, 51, 51); text-rendering: optimizeLegibility; font-size: 18px; text-indent: 1em; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            Spring Boot 快速入门
                        </h2>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;">编辑器：</span>IntelliJ&nbsp;IDEA&nbsp;
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;"></span>技术：maven、jdk_1.8
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            Spring Boot 版本&nbsp;<br/>
                        </p>
                        <pre style="padding: 9.5px; font-family: Monaco, Menlo, Consolas, Courier New, monospace; font-size: 13px; color: rgb(51, 51, 51); border-radius: 0px; margin-top: 0px; margin-bottom: 0px; line-height: 20px; word-break: break-all; word-wrap: break-word; white-space: pre-wrap; border: 1px solid rgba(0, 0, 0, 0.14902); overflow-x: auto; background-color: rgb(245, 245, 245);">1.4.1.RELEASE</pre>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;"><br/></span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;">POM.XML 内容如下</span>
                        </p>
                        <pre class="brush:xml;toolbar:false">&lt;project xmlns=&quot;http://maven.apache.org/POM/4.0.0&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
         xsi:schemaLocation=&quot;http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd&quot;&gt;

    &lt;parent&gt;
        &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
        &lt;artifactId&gt;spring-boot-starter-parent&lt;/artifactId&gt;
        &lt;version&gt;1.4.1.RELEASE&lt;/version&gt;
    &lt;/parent&gt;

    &lt;modelVersion&gt;4.0.0&lt;/modelVersion&gt;
    &lt;artifactId&gt;spring-boot-introduction-miniits&lt;/artifactId&gt;
    &lt;packaging&gt;war&lt;/packaging&gt;
    &lt;name&gt;spring-boot-introduction-miniits&lt;/name&gt;
    &lt;url&gt;http://maven.apache.org&lt;/url&gt;
    &lt;dependencies&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;junit&lt;/groupId&gt;
            &lt;artifactId&gt;junit&lt;/artifactId&gt;
            &lt;version&gt;3.8.1&lt;/version&gt;
            &lt;scope&gt;test&lt;/scope&gt;
        &lt;/dependency&gt;
        &lt;dependency&gt;
            &lt;groupId&gt;org.springframework.boot&lt;/groupId&gt;
            &lt;artifactId&gt;spring-boot-starter-web&lt;/artifactId&gt;
        &lt;/dependency&gt;
    &lt;/dependencies&gt;
    &lt;repositories&gt;
        &lt;repository&gt;
            &lt;id&gt;spring-snapshots&lt;/id&gt;
            &lt;name&gt;Spring Snapshots&lt;/name&gt;
            &lt;url&gt;https://repo.spring.io/libs-snapshot&lt;/url&gt;
            &lt;snapshots&gt;
                &lt;enabled&gt;true&lt;/enabled&gt;
            &lt;/snapshots&gt;
        &lt;/repository&gt;
    &lt;/repositories&gt;
    &lt;build&gt;
        &lt;finalName&gt;spring-boot-introduction-miniits&lt;/finalName&gt;
    &lt;/build&gt;
&lt;/project&gt;</pre>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;"></span><br/>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;">首先创建我们的java启动类&nbsp;</span>
                        </p>
                        <pre style="font-family: Courier New; font-size: 9pt; background-color: rgb(255, 255, 255);">MiniitsApplicationApp.class</pre>
                        <pre class="brush:java;toolbar:false">package com.introduction.miniits;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: www.miniits.com
 * @Date:
 * @Time: &lt;p&gt;
 * Description:
 *          技术来源：迷你科技
 *          项目描述：Spring Boot 快速入门DEMO
 *          在程序入口中添加@SpringBootApplication 即可
 *          注意 MniitsApplicationApp启动类在java包下是不行的，必须自己在建包名，放在自己所建的包下
 */

@SpringBootApplication
public class MiniitsApplicationApp {
    public static void main(String[] args){
        SpringApplication.run(MiniitsApplicationApp.class,args);
    }
}</pre>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;"></span>一个简单的spring应用就创建完了
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            之后创建一个controller类来测试我们的应用是否成功
                        </p>
                        <pre class="brush:java;toolbar:false;"
                             style="font-family: Courier New; font-size: 9pt; background-color: rgb(255, 255, 255);">MiniitsController.class</pre>
                        <pre class="brush:java;toolbar:false">package com.introduction.miniits.controller;/**
 * Created by wq on 2017/2/26.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author: www.miniits.com
 * @Date:
 * @Time: &lt;p&gt;
 * Description:
 *          技术来源：迷你科技
 */

@Controller
@RequestMapping(&quot;/&quot;)
public class MiniitsController {

    @RequestMapping(&quot;spring_boot_demo&quot;)
    @ResponseBody
    public String miniits(){

        return &quot;&lt;html&gt;\n&quot; +
                &quot;&lt;body&gt;\n&quot; +
                &quot;&lt;h2&gt;&lt;a href=\&quot;http://www.miniits.com\&quot;&gt;Spring Boot入门测试&lt;/a&gt;&lt;/h2&gt;\n&quot; +
                &quot;&lt;h2&gt;&lt;a href=\&quot;http://www.miniits.com\&quot;&gt;技术支持：迷你科技&lt;/a&gt;&lt;/h2&gt;\n&quot; +
                &quot;&lt;/body&gt;\n&quot; +
                &quot;&lt;/html&gt;&quot;;
    }
}</pre>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;">启动MniitsApplicationApp后输入访问的网址</span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            <span style="font-size: 18px;"><a href="http://localhost:8000/miniits/spring_boot_demo">http://localhost:8000/miniits/spring_boot_demo</a> </span>
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            配置文件解释
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            application.yml
                        </p>
                        <pre class="brush:java;toolbar:false">server:
  context-path: /miniits
  port: 8000

info:
  app:
    name: MiniIts
    description: 迷你科技
    version: 1.0.0</pre>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            context-path：访问路径
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            part：访问端口
                        </p>
                        <p style="margin-top: 0px; margin-bottom: 0.75em; text-indent: 1em; color: rgb(51, 51, 51); font-family: Helvetica Neue, Helvetica, Tahoma, Arial, STXihei, Microsoft YaHei, 微软雅黑, sans-serif; white-space: normal; line-height: 1.5em; background-color: rgb(254, 254, 254);">
                            info：spring应用信息
                        </p>


                    </li>
                </ul>
            </div>

            <div id="articleComment" class="f-mt30" style="text-align: left"></div>
        </div>
    </div>
</div>

<footer class="site-footer f-fl f-mt20">
    <div class="footer-about col-md-5 col-sm-12" style="margin-left: 50px;text-align: left"><h4
            style="text-align: center">关于 迷你科技</h4>
        <p style="margin-bottom: 0">迷你科技是一家专注于技术并提供相关技术框架文档的平台，平台整合多方资源，做简单易懂的说明。</p>
        <p style="margin-bottom: 0">平台主要提供了java相关的技术如Spring Spring Boot Spring Cloud Spring Data JPA Hibernate Mybatis</p>
        <p style="margin-bottom: 0">数据库方面如 Mysql Redis Mongodb</p>
        <p style="margin-bottom: 0">前端方面如 Jquery Node.js Vue.js Angular.js HTML5 CSS3</p>
        <p style="margin-bottom: 0">以及各个方面工具的使用教程等等</p>
        <p style="margin-bottom: 0"><a href="http://www.miniits.com" style="color: #173d5e">www.miniits.com</a>网执着于建立最纯净的技术类网站，有什么好的不好的创意、建议</p>
        <p style="margin-bottom: 0">请告诉我们</p>
        <p style="margin-bottom: 0">反馈或建议请发送邮件至：miniits@163.com</p>
    </div>
    <div style="float: right;width: 500px;margin-top: 10px">
        <label style="width: 100%;font-weight: 100">请迷你科技喝咖啡！轻松做优质内容</label>
        <img width="160px" height="200px" style="margin-right: 20px"
             src="${rootPath}/resources/commons/images/pay/wechatpay.png">
        <img width="160px" height="200px" src="${rootPath}/resources/commons/images/pay/alipay.jpg">
    </div>
    <div style="float: left; width: 100%;margin-top: 20px">
        © 2013-2017 京ICP备11008151号 京公网安备11010802014853 WWW.MINIITS.COM
    </div>
</footer>
<link href="${rootPath}/resources/webapp/sortware/spring_boot.css" rel="stylesheet" type="text/css"/>
<script src="${rootPath}/resources/webapp/sortware/spring_boot.js"></script>
</body>
</html>

