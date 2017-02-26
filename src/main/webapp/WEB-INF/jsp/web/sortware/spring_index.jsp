<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Spring-迷你科技</title>
    <script async="" src="http://c.cnzz.com/core.php"></script>
    <meta name="description" content="Bootstrap中文网开源项目免费 CDN 服务 - 我们致力于为Bootstrap一样优秀的开源项目提供稳定、快速的免费 CDN 服务">
    <meta name="keywords" content="">
    <meta name="author" content="Bootstrap中文网">
</head>
<body>
<div class="site-notice">
    <em>MiniIts.com-迷你科技</em>
</div>
<header class="site-header jumbotron">
    <div class="site-nav">
        <shiro:guest>
            <a href="${rootPath}/dynamic.html">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/login.html" target="_blank">登入</a>
            <span>/</span>
            <a href="${rootPath}/user/register.html">注册</a>
        </shiro:guest>

        <shiro:authenticated>
            <a href="${rootPath}/user/setting.html">设置</a>
            <span>/</span>
            <a href="${rootPath}/dynamic.html">动态</a>
            <span>/</span>
            <a href="${rootPath}/blog/<shiro:principal/>">博客</a>
            <span>/</span>
            <a href="${rootPath}/user/userAdmin.html" target="_blank">主页</a>
            <span>/</span>
            <a href="${rootPath}/logout" target="_blank">退出:</a><shiro:principal/>
        </shiro:authenticated>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12"><h1>Spring</h1>
                <p>中文网<br><span class="package-amount">这里是介绍 spring 的  这里是介绍 spring 的  这里是介绍 spring 的  </span>
                </p>
            </div>
        </div>
    </div>
</header>
<div class="f-ww f-mt10 f-mb10">
    <div class="div-body-product-logo f-ah">

        <div class="container-main f-ww">
            <ul class="clearfix">
                <li><a class="item" onclick="javascript:articleSelect('dynamic')">下载jar</a></li>
                <li><a class="item" onclick="javascript:articleSelect('collects')">Manve引入</a></li>
                <li><a class="item" onclick="javascript:articleSelect('subscibes')">API文档</a></li>
                <li><a class="item" href="#li_spring_framework" >Spring注解</a></li>
                <li><a class="item" onclick="javascript:articleSelect('fans')">官网</a></li>
                <li><a class="item" onclick="javascript:articleSelect('fans')">论坛</a></li>
            </ul>
        </div>

        <div class="div-spring-menu f-dr1c8 f-fl f-mt20">
            <label>获取代码</label>
            <ul>
                <li>GitHub :<input value="https://github.com" readonly="readonly" class="inp-br-b" /> &nbsp <img src="${rootPath}/resources/commons/images/copy.png" width="25px" height="25px" ></img></li>
                <li class="f-mt10">码云 :&nbsp&nbsp&nbsp&nbsp<input value="https://git.oschina.net" readonly="readonly" class="inp-br-b" /> &nbsp <img src="${rootPath}/resources/commons/images/copy.png" width="25px" height="25px" ></li>
            </ul>
            <label>Spring技术交流</label>
            <ul>
                <li>QQ群 :<input value="857454370" readonly="readonly" class="inp-br-b" /></li>
                <li class="f-mt10">QQ群 :<input value="842230914" readonly="readonly" class="inp-br-b" /></li>
            </ul>
            <label>Spring 装配Bean</label><br>
            <label>Spring 高级装配</label><br>
            <label>Spring MVC</label><br>
            <label>Spring AOP</label><br>
            <label>Spring IOC</label><br>
        </div>
        <div class="div-spring-text f-dr1c8 f-fl f-mt20">
            <label><h2>Spring</h2></label>
                <img src="${rootPath}/resources/commons/images/spring_framework.jpg" width="100%" height="100%" alt="spring framework">
            <ul>
                <li id="li_spring_framework">

                    <div class="f-tal">
                        <label>Spring 注解</label>
                        <br>
                        <br>
                        使用Spring2.5的新特性——Autowired可以实现快速的自动注入，而无需在xml文档里面添加bean的声明，大大减少了xml文档的维护。<br>
                        以下是一个例子：先编写接口<br>
                        Man：<br>
                        public interface Man { <br>
                        public String sayHello(); <br>
                        } <br>
                        <br>
                        然后写Man的实现类Chinese和American：<br>
                        @Service <br>
                        public class Chinese implements Man{ <br>
                        <br>
                        public String sayHello() { <br>
                        return "I am Chinese!"; <br>
                        <br>
                        } <br>
                        <br>
                        } <br>
                        <br>
                        @Service <br>
                        <br>
                        public class American implements Man{ <br>
                        <br>
                        public String sayHello() { <br>
                        <br>
                        return "I am American!"; <br>
                        <br>
                        <br>
                        } <br>
                        } <br>
                        <br>
                        @Service<br>
                        <br>
                        注释表示定义一个bean，自动根据bean的类名实例化一个首写字母为小写的bean，例如Chinese实例化为chinese，<br>
                        American实例化为american，如果需要自己改名字则:@Service("你自己改的bean名")。<br>
                        beans.xml <br>
                        &lt;?xml version="1.0" encoding="UTF-8"?&gt; <br>
                        &lt;beans xmlns="http://www.springframework.org/schema/beans" <br>
                        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" <br>
                        xmlns:context="http://www.springframework.org/schema/context" <br>
                        <br>
                        <br>
                        xsi:schemaLocation="http://www.springframework.org/schema/beans <br>
                        <br>
                        <br>
                        <a href="http://www.springframework.org/schema/context" target="_blank">http://www.springframework.org/schema/context</a> <br>
                        <br>
                        <a href="http://www.springframework.org/schema/context/spring-context-2.5.xsd" target="_blank">http://www.springframework.org/schema/context/spring-context-2.5.xsd</a>"&gt; <br>
                        &lt;context:annotation-config/&gt; <br>
                        &lt;context:component-scan base-package="testspring.main"/&gt; <br>
                        &lt;/beans&gt; <br>
                        <br>
                        在spring的配置文件里面只需要加上&lt;context:annotation-config/&gt;和&lt;context:component-scan <br>
                        base-package="需要实现注入的类所在包"/&gt;，可以使用base-package="*"表示全部的类。<br>
                        <br>
                        @Controller<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Service<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Autowired<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @RequestMapping<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @RequestParam<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @ModelAttribute<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Cacheable<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @CacheFlush<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Resource<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @PostConstruct<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @PreDestroy<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• <a href="http://home.51cto.com/index.php?s=/space/2438625" target="_blank">@repository</a><br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• <a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a> （不推荐使用）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• <a href="http://home.51cto.com/index.php?s=/space/2040881" target="_blank">@scope</a><br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @SessionAttributes<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @InitBinder<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Required<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• <a href="http://home.51cto.com/index.php?s=/space/3157863" target="_blank">@qualifier</a><br>
                        <br>
                        @Controller<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Controller<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;public class SoftCreateController extends SimpleBaseController {}<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 或者<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; @Controller("softCreateController")<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Controller 负责注册一个bean 到spring 上下文中，bean 的ID 默认为类名称开头字母小写<br>
                        <br>
                        @Service<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Service<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;public class SoftCreateServiceImpl implements ISoftCreateService {}<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 或者<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Service("softCreateServiceImpl")<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Service 负责注册一个bean 到spring 上下文中，bean 的ID 默认为类名称开头字母小写<br>
                        <br>
                        @Autowired<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Autowired<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;private ISoftPMService softPMService;<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 或者<br>
                        <br>
                        &nbsp; &nbsp;&nbsp;&nbsp;@Autowired(required=false)<br>
                        &nbsp; &nbsp;&nbsp;&nbsp;private ISoftPMService softPMService = new SoftPMServiceImpl();<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;• 说明<br>
                        &nbsp; &nbsp; @Autowired 根据bean 类型从spring 上线文中进行查找，注册类型必须唯一，否则报异常。与@Resource 的区别在于，@Resource 允许通过bean 名称或bean 类型两种方式进行查找@Autowired(required=false) 表示，如果spring 上下文中没有找到该类型的bean 时， 才会使用new SoftPMServiceImpl();<br>
                        <br>
                        @Autowired 标注作用于 Map 类型时，如果 Map 的 key 为 String 类型，则 Spring 会将容器中所有类型符合 Map 的 value 对应的类型的 Bean 增加进来，用 Bean 的 id 或 name 作为 Map 的 key。<br>
                        <br>
                        @Autowired 还有一个作用就是，如果将其标注在 BeanFactory 类型、ApplicationContext 类型、ResourceLoader 类型、ApplicationEventPublisher 类型、MessageSource 类型上，那么 Spring 会自动注入这些实现类的实例，不需要额外的操作。<br>
                        <br>
                        @RequestMapping<br>
                        • 类<br>
                        @Controller <br>
                        @RequestMapping("/bbtForum.do")<br>
                        public class BbtForumController {<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; @RequestMapping(params = "method=listBoardTopic")<br>
                        public String listBoardTopic(int topicId,User user) {}<br>
                        }<br>
                        <br>
                        &nbsp;&nbsp;• 方法<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@RequestMapping("/softpg/downSoftPg.do")<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@RequestMapping(value="/softpg/ajaxLoadSoftId.do",method = POST)<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@RequestMapping(value = "/osu/product/detail.do", params = { "modify=false" }, method =POST)<br>
                        <br>
                        &nbsp;&nbsp;• 说明<br>
                        &nbsp; &nbsp; @RequestMapping 可以声明到类或方法上<br>
                        <br>
                        • 参数绑定说明<br>
                        如果我们使用以下的 URL 请求：<br>
                        <a href="http://localhost/bbtForum.do?method=listBoardTopic&amp;topicId=1&amp;userId=10&amp;userName=tom" target="_blank">http://localhost/bbtForum.do?method=listBoardTopic&amp;topicId=1&amp;userId=10&amp;userName=tom</a><br>
                        topicId URL 参数将绑定到 topicId 入参上，而 userId 和 userName URL 参数将绑定到 user 对象的 userId 和 userName 属性中。和 URL 请求中不允许没有 topicId 参数不同，虽然 User 的 userId 属性的类型是基本数据类型，但如果 URL 中不存在 userId 参数，Spring 也不会报错，此时 user.userId 值为 0 。如果 User 对象拥有一个 dept.deptId 的级联属性，那么它将和 dept.deptId URL 参数绑定。<br>
                        <br>
                        @RequestParam<br>
                        • 参数绑定说明<br>
                        @RequestParam("id")<br>
                        <br>
                        <a href="http://localhost/bbtForum.do?method=listBoardTopic&amp;id=1&amp;userId=10&amp;userName=tom" target="_blank">http://localhost/bbtForum.do?method=listBoardTopic&amp;id=1&amp;userId=10&amp;userName=tom</a><br>
                        listBoardTopic(@RequestParam("id")int topicId,User user) 中的 topicId 绑定到 id 这个 URL 参数， 那么可以通过对入参使用 @RequestParam 注解来达到目的<br>
                        <br>
                        @RequestParam(required=false)：参数不是必须的，默认为true<br>
                        @RequestParam(value="id",required=false)<br>
                        <br>
                        请求处理方法入参的可选类型<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• Java 基本数据类型和 String<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;默认情况下将按名称匹配的方式绑定到 URL 参数上，可以通过 @RequestParam 注解改变默认的绑定规则<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• request/response/session<br>
                        既可以是 Servlet API 的也可以是 Portlet API 对应的对象，Spring 会将它们绑定到Servlet 和 Portlet 容器的相应对象上<br>
                        <br>
                        • org.springframework.web.context.request.WebRequest<br>
                        内部包含了 request 对象<br>
                        <br>
                        • java.util.Locale<br>
                        绑定到 request 对应的 Locale 对象上<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• java.io.InputStream/java.io.Reader<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 可以借此访问 request 的内容<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• java.io.OutputStream / java.io.Writer<br>
                        可以借此操作 response 的内容<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;• 任何标注了 @RequestParam 注解的入参<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; 被标注 @RequestParam 注解的入参将绑定到特定的 request 参数上。<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;• java.util.Map / org.springframework.ui.ModelMap<br>
                        它绑定 Spring MVC 框架中每个请求所创建的潜在的模型对象，它们可以被 Web 视图对象访问（如 JSP ）<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;• 命令/ 表单对象（注：一般称绑定使用 HTTP GET 发送的 URL 参数的对象为命令对象，而称绑定使用HTTP POST 发送的 URL 参数的对象为表单对象）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;它们的属性将以名称匹配的规则绑定到 URL 参数上，同时完成类型的转换。<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;而类型转换的规则可以通过 @InitBinder 注解或通过 HandlerAdapter 的配置进行调 整<br>
                        <br>
                        &nbsp; &nbsp;• org.springframework.validation.Errors / org.springframework.validation.BindingResult<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;为属性列表中的命令/ 表单对象的校验结果，注意检验结果参数必须紧跟在命令/ 表单对象的后面<br>
                        <br>
                        &nbsp; &nbsp; • org.springframework.web.bind.support.SessionStatus<br>
                        可以通过该类型 status 对象显式结束表单的处理，这相当于触发 session 清除其中的通过@SessionAttributes 定义的属性<br>
                        <br>
                        请求处理方法返回值的可选类型<br>
                        • void<br>
                        此时逻辑视图名由请求处理方法对应的 URL 确定，如以下的方法：<br>
                        @RequestMapping("/welcome.do")<br>
                        public void welcomeHandler() {}<br>
                        对应的逻辑视图名为 “ welcome ” <br>
                        <br>
                        • String<br>
                        此时逻辑视图名为返回的字符，如以下的方法：<br>
                        @RequestMapping(method = RequestMethod.GET)<br>
                        public String setupForm(@RequestParam("ownerId") int ownerId, ModelMap model) {<br>
                        <br>
                        Owner owner = this.clinic.loadOwner(ownerId);<br>
                        model.addAttribute(owner);<br>
                        return "ownerForm";<br>
                        <br>
                        }<br>
                        对应的逻辑视图名为 “ ownerForm ” <br>
                        <br>
                        • org.springframework.ui.ModelMap<br>
                        和返回类型为 void 一样，逻辑视图名取决于对应请求的 URL ，如下面的例子：<br>
                        @RequestMapping("/vets.do")<br>
                        public ModelMap vetsHandler() {<br>
                        return new ModelMap(this.clinic.getVets());<br>
                        }<br>
                        对应的逻辑视图名为 “ vets ” ，返回的 ModelMap 将被作为请求对应的模型对象，可以在 JSP 视图页面中访问到。<br>
                        <br>
                        • ModelAndView<br>
                        当然还可以是传统的 ModelAndView 。<br>
                        <br>
                        @ModelAttribute<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 作用域：request<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; @RequestMapping("/base/userManageCooper/init.do")<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; public String handleInit(@ModelAttribute("queryBean") ManagedUser sUser,Model model,){<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 或者<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@ModelAttribute("coopMap")// 将coopMap 返回到页 面<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;public Map&lt;Long,CooperatorInfo&gt; coopMapItems(){}<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        <br>
                        @ModelAttribute 声明在属性上，表示该属性的value 来源于model 里"queryBean" ，并被保存到model 里@ModelAttribute 声明在方法上，表示该方法的返回值被保存到model 里<br>
                        <br>
                        @Cacheable 和@CacheFlush<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @Cacheable ：声明一个方法的返回值应该被缓 存<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;例如：@Cacheable(modelId = "testCaching")<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• @CacheFlush ：声明一个方法是清空缓存的触发器<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;例如：@CacheFlush(modelId = "testCaching")<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;要配合缓存处理器使用，参考： <a href="http://hanqunfeng.iteye.com/blog/603719" target="_blank">http://hanqunfeng.iteye.com/blog/603719</a><br>
                        <br>
                        @Resource<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Resource<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;private DataSource dataSource; // inject the bean named 'dataSource'<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 或者<br>
                        <br>
                        @Resource(name="dataSource")<br>
                        @Resource(type=DataSource.class)<br>
                        <br>
                        • 说明<br>
                        @Resource 默认按bean 的name 进行查找，如果没有找到会按type 进行查找，<br>
                        此时与@Autowired 类 似<br>
                        在没有为 @Resource 注解显式指定 name 属性的前提下，如果将其标注在 BeanFactory 类型、ApplicationContext 类型、ResourceLoader 类型、ApplicationEventPublisher 类型、MessageSource 类型上，那么 Spring 会自动注入这些实现类的实例，不需要额外的操作。此时 name 属性不需要指定 ( 或者指定为"")，否则注入失败；<br>
                        @PostConstruct 和@PreDestroy<br>
                        • @PostConstruct<br>
                        在方法上加上注解@PostConstruct ，这个方法就会在Bean 初始化之后被Spring 容器执 行<br>
                        （注：Bean 初始化包括，实例化Bean ，并装配Bean 的属性（依赖注入））。<br>
                        <br>
                        • @PreDestroy<br>
                        在方法上加上注解@PreDestroy ，这个方法就会在Bean 被销毁前被Spring 容器执行。<br>
                        <br>
                        <a href="http://home.51cto.com/index.php?s=/space/2438625" target="_blank">@repository</a><br>
                        • 与@Controller 、@Service 类似，都是向spring 上下文中注册bean ，不在赘述。<br>
                        <br>
                        <a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a> （不推荐使用）<br>
                        • <a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a><br>
                        <a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a> 是所有受Spring 管理组件的通用形式，Spring 还提供了更加细化的注解形式：&nbsp;&nbsp;<a href="http://home.51cto.com/index.php?s=/space/2438625" target="_blank">@repository</a> 、@Service 、@Controller ，它们分别对应存储层Bean ，业务层Bean ，和展示层Bean 。<br>
                        目前版本（2.5 ）中，这些注解与<a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a> 的语义是一样的，完全通用， 在Spring 以后的版本中可能会给它们追加更多的语义。 所以，我们推荐使用<a href="http://home.51cto.com/index.php?s=/space/2438625" target="_blank">@repository</a> 、@Service 、@Controller 来替代<a href="http://home.51cto.com/index.php?s=/space/1032231" target="_blank">@component</a> 。<br>
                        <br>
                        <a href="http://home.51cto.com/index.php?s=/space/2040881" target="_blank">@scope</a><br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; @Scope("session")<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; @Repository()<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; public class UserSessionBean implementsSerializable {}<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        <br>
                        在使用XML 定义Bean 时，可以通过bean 的scope 属性来定义一个Bean 的作用范围，<br>
                        同样可以通过<a href="http://home.51cto.com/index.php?s=/space/2040881" target="_blank">@scope</a> 注解来完成<br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp; @Scope中可以指定如下值：<br>
                        &nbsp; &nbsp;&nbsp; &nbsp; singleton:定义bean的范围为每个spring容器一个实例（默认值）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp; prototype:定义bean可以被多次实例化（使用一次就创建一次）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp; request:定义bean的范围是http请求（springMVC中有效）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp; session:定义bean的范围是http会话（springMVC中有效）<br>
                        &nbsp; &nbsp;&nbsp; &nbsp; global-session:定义bean的范围是全局http会话（portlet中有效）<br>
                        <br>
                        @SessionAttributes<br>
                        • 说明<br>
                        Spring 允许我们有选择地指定 ModelMap 中的哪些属性需要转存到 session 中，<br>
                        以便下一个请求属对应的 ModelMap 的属性列表中还能访问到这些属性。<br>
                        这一功能是通过类定义处标注 @SessionAttributes 注解来实现的。<br>
                        @SessionAttributes 只能声明在类上，而不能声明在方法上。 <br>
                        • 例如<br>
                        @SessionAttributes("currUser") // 将ModelMap 中属性名为currUser 的属性<br>
                        @SessionAttributes({"attr1","attr2"})<br>
                        @SessionAttributes(types = User.class)<br>
                        @SessionAttributes(types = {User.class,Dept.class})<br>
                        @SessionAttributes(types = {User.class,Dept.class},value={"attr1","attr2"})<br>
                        <br>
                        @InitBinder<br>
                        • 说明<br>
                        如果希望某个属性编辑器仅作用于特定的 Controller ，<br>
                        可以在 Controller 中定义一个标注 @InitBinder 注解的方法，<br>
                        可以在该方法中向 Controller 了注册若干个属性编辑器<br>
                        <br>
                        • 例如<br>
                        @InitBinder<br>
                        public void initBinder(WebDataBinder binder) {<br>
                        <br>
                        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");<br>
                        dateFormat.setLenient(false);<br>
                        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));<br>
                        <br>
                        }<br>
                        <br>
                        @Required<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@required&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;public&nbsp;&nbsp;setName(String name){} <br>
                        <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 说明<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@ required 负责检查一个bean在初始化时其声明的 set方法是否被执行， 当某个被标注了 @Required 的 Setter 方法没有被调用，则 Spring 在解析的时候会抛出异常，以提醒开发者对相应属性进行设置。 @Required 注解只能标注在 Setter 方法之上。因为依赖注入的本质是检查 Setter 方法是否被调用了，而不是真的去检查属性是否赋值了以及赋了什么样的值。如果将该注解标注在非 setXxxx() 类型的方法则被忽略。<br>
                        <br>
                        <a href="http://home.51cto.com/index.php?s=/space/3157863" target="_blank">@qualifier</a><br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;• 例如<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Autowired<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;@Qualifier("softService")<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;private ISoftPMService softPMService; <br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;• 说明<br>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;使用@Autowired 时，如果找到多个同一类型的bean，则会抛异常，此时可以使用 @Qualifier("beanName")，明确指定bean的名称进行注入，此时与 @Resource指定name属性作用相同。								</div>
                </li>
            </ul>
        </div>
    </div>
</div>

<footer class="site-footer f-fl f-mt20">
    <div class="container">
        WWW.MINIITS.COM
    </div>
</footer>
<link href="${rootPath}/resources/webapp/sortware/spring.css" rel="stylesheet" type="text/css"/>
<script src="${rootPath}/resources/webapp/sortware/spring.js"></script>
</body>
</html>

