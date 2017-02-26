<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MiniIts.com-迷你科技</title>
    <script async="" src="http://c.cnzz.com/core.php"></script>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="">
    <meta name="author" content="Bootstrap中文网">
</head>
<body class="home-template">
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        <shiro:guest>
            <a href="${rootPath}/dynamic.html" class="a-saveRequestUrl">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/login.html" target="_blank">登入</a>
            <span>/</span>
            <a href="${rootPath}/user/register.html">注册</a>
        </shiro:guest>

        <shiro:authenticated>
            <a href="${rootPath}/user/setting.html" class="a-saveRequestUrl">设置</a>
            <span>/</span>
            <a href="${rootPath}/dynamic.html" class="a-saveRequestUrl">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>" class="a-saveRequestUrl">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/userAdmin.html" target="_blank" class="a-saveRequestUrl">主页</a>
            <span>/</span>
            <a href="${rootPath}/logout" target="_blank">退出:</a><shiro:principal/>
        </shiro:authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h1>MiniIts</h1>
                <p>MINIITS.COM-迷你科技<br><span class="package-amount">迷你科技网是中文IT社区，提供专业互联网IT技术服务</span></p>
                <form class="" role="search">
                    <div class="input-group input-group-lg">
                        <input type="text" class="form-control search clearable"
                               placeholder="搜索MiniIts,如：Spring Boot,Spring MVC,MyBatis Jar,jquery">
                        <span class="input-group-addon search clearable f-csp">GO!</span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>

<div class="row f-ww f-mb10" style="margin: auto;">
    <div class="div-body-product-logo f-ah ">

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/spring_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="${rootPath}/spring_boot.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/spring_boot_logo.jpg" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="${rootPath}/spring_boot.html" target="_blank" title="Spring Cloud Config">
                            Spring Boot<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/spring_cloud_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/hibernate_logo.png" width="250"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Hibernate<br>
                            <small>&nbsp;</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/mybatis_logo.jpg" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Mybatis<br>
                            <small>&nbsp;</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div style="width: 100%;border-bottom: 1px solid #27AE60;" class="f-fl f-mt10 f-mb10"><label>数据库</label></div>


        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/Mysql.jpg" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/redis_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/mongodb_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>


        <div style="width: 100%;border-bottom: 1px solid #27AE60;" class="f-fl f-mt10 f-mb10"><label>JavaScript</label>
        </div>


        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/jquery_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>


        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/angular_logo.jpg" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/Bootstrap.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/Vue_logo.png" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/Node.jpg" width="150" height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/html5.gif" width="150"
                         height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 f-mt20">
            <div style="height: 358px;" class="f-dr1c8 f-tac">
                <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                    <img class="lazy" src="${rootPath}/resources/commons/images/index/CSS3.jpg" width="150" height="150"
                         data-src="img/spring-cloud-config.png" alt="Spring Cloud Config">
                </a>
                <div class="caption">
                    <h3>
                        <a href="spring-cloud-config-zhcn.html" target="_blank" title="Spring Cloud Config">
                            Spring Cloud Config<br>
                            <small>Spring</small>
                        </a>
                    </h3>
                    <p>配置管理工具包，让你可以把配置放到远程服务器，集中化管理集群配置，目前支持本地存储、Git以及Subversion。</p>
                </div>
            </div>
        </div>


        <div style="width: 100%;border-bottom: 1px solid #27AE60;" class="f-fl f-mt10 f-mb10"><label>开发工具</label></div>


        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/myeclipse_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>Myeclipse</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/eclipse.png" width="100px" height="100px"><br>
                </a>
                <label>Eclipse</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/intellij_idea_logo.png" width="100px"
                     height="100px"><br>
                </a>
                <label>IntelliJ IDEA</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>应用工具</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/myeclipse_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>Myeclipse</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>下载</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/JDK_LOGO.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>JDK</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/JAR_LOGO.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>JAR</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>常用软件</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/QQ_LOGO.png" width="100px"
                         height="100px"><br>
                </a>
                <label>QQ</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/WEIXIN_LOGO.png" width="100px"
                         height="100px"><br>
                </a>
                <label>微信</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/zhifubao_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>支付宝</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/360_logo.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>360</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/Chrome_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>Chrome</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/kugou_logo.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>酷狗</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/IDM_LOGO.png" width="100px"
                         height="100px"><br>
                </a>
                <label>IDM</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/yinxiangbiji_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>印象笔记</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/toutiao_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>今日头条</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/weibo_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>微博</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/UC_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>UC浏览器</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/toutiao_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>今日头条</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/taobao_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>淘宝</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/JD_LOGO.png" width="100px"
                         height="100px"><br>
                </a>
                <label>京东</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/sougou_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>搜狗输入法</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/gaodeditu_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>高德地图</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/douyu_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>斗鱼直播</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/bibi_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>B站</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/12306.png" width="100px"
                         height="100px"><br>
                </a>
                <label>12306</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/wandoujia_logo.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>豌豆荚</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/WIN10_LOGO.jpg" width="100px"
                         height="100px"><br>
                </a>
                <label>Windows 10</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/office_logo.png" width="100px"
                         height="100px"><br>
                </a>
                <label>Office 2016</label>
            </span>
        </div>
    </div>
</div>

<footer class="site-footer f-fl f-mt20">
    <div class="container">
        WWW.MINIITS.COM
    </div>
</footer>
<link href="${rootPath}/resources/webapp/index/index.css" rel="stylesheet" type="text/css"/>
<script src="${rootPath}/resources/webapp/index/index.js"></script>
</body>
</html>
