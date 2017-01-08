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
<div class="f-ww f-mt10 f-mb10">
    <div class="div-body-product-logo f-ah">
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mb10"><label>框架</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/spring_logo.png" width="100px" height="100px"><br>
                </a>
                <label>Spring</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/spring_boot_logo.jpg" width="100px" height="100px"><br>
                </a>
                <label>Spring Boot</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                    <img src="${rootPath}/resources/commons/images/index/spring_boot_logo.jpg" width="100px" height="100px"><br>
                </a>
                <label>Spring Cloud</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/hibernate_logo.png" width="100px"
                     height="100px"><br>
                </a>
                <label>Hibernate</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/mybatis-logo.png" width="100px" height="100px"><br>
                </a>
                <label>Mybatis</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>数据库</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/Mysql.jpg" width="100px" height="100px"><br>
                </a>
                <label>MySQL</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/redis_logo.png" width="100px" height="100px"><br>
                </a>
                <label>Redis</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/mongodb_logo.png" width="100px" height="100px"><br>
                </a>
                <label>Mongodb</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>JavaScript</label></div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/jquery_logo.png" width="100px" height="100px"><br>
                </a>
                <label>Jquery</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/angular_logo.jpg" width="100px" height="100px"><br>
                </a>
                <label>Angular2</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/Bootstrap.png" width="100px" height="100px"><br>
                </a>
                <label>Bootstrap</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/Vue_logo.png" width="100px" height="100px"><br>
                </a>
                <label>Vue</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/Node.jpg" width="100px" height="100px"><br>
                </a>
                <label>Node</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/html5.gif" width="100px" height="100px"><br>
                </a>
                <label>Html5</label>
            </span>
        </div>
        <div class="f-fl f-ml10 f-mr10 f-tac">
            <span>
                <a href="https://www.baidu.com">
                <img src="${rootPath}/resources/commons/images/index/CSS3.jpg" width="100px" height="100px"><br>
                </a>
                <label>CSS3</label>
            </span>
        </div>
        <div style="width: 100%;border-bottom: 1px solid red;" class="f-fl f-mt10 f-mb10"><label>开发工具</label></div>
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
