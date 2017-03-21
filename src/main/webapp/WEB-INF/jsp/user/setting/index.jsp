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
<body gap="^手动更新 - 头条号" class="">
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
                        <!--<i class="sys-msg-dot" data-node="sys_msg_dot"></i>-->
                    </div>
                    <div class="sys-msg-outer" data-node="sys_msg_wrapper">
                        <div class="sys-msg-transparent"></div>
                        <div class="sys-msg-inner">
                            <ul class="sys-msg-con" data-node="sys_msg_con">
                                <li ga="通知"><a href="/message/#inform" class="sys-msg-type sys-msg-inform"
                                               data-node="sys_msg_inform">通知<span class="new_inform_num" data-num="0"
                                                                                  style="display: none;">0</span></a>
                                </li>
                                <li ga="评论"><a href="/comment/" class="sys-msg-type sys-msg-comment"
                                               data-node="sys_msg_comment">评论<span class="new_comment_num" data-num="0"
                                                                                   style="display: none;">0</span></a>
                                </li>
                                <li ga="关注"><a href="/message/#subscribe" class="sys-msg-type sys-msg-subscribe"
                                               data-node="sys_msg_subscribe">关注<span class="new_subscribe_num"
                                                                                     data-num="1"
                                                                                     style="display: block;">1</span></a>
                                </li>
                                <li ga="收藏"><a href="/message/#collect" class="sys-msg-type sys-msg-collect"
                                               data-node="sys_msg_collect">收藏<span class="new_collect_num" data-num="0"
                                                                                   style="display: none;">0</span></a>
                                </li>
                                <li ga="转发"><a href="/message/#retransmit" class="sys-msg-type sys-msg-retransmit"
                                               data-node="sys_msg_retransmit">转发<span class="new_retransmit_num"
                                                                                      data-num="0"
                                                                                      style="display: none;">0</span></a>
                                </li>
                            </ul>
                        </div>
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
                <a href="/" class="menu_h1  menu_main alone"><i></i>主页</a>
            </div>
            <div class="menu_block">
                <a style="cursor: pointer;" onclick="javascript:settingFun('typeManages');" class="menu_h1  new_article alone" ga="发表文章统计">
                    <i></i>类别管理</a>
            </div>

            <div class="menu_block">
                <a class="menu_h1 menu_article"><i></i>内容管理</a>
                <a style="cursor: pointer;" onclick="javascript:settingFun('articleManages');" class="menu_h2  selected  ">文章管理</a>


                <a href="/comment/" class="menu_h2 ">评论管理</a>

            </div>
            <div class="menu_block">
                <a class="menu_h1 menu_info"><i></i>数据统计</a>
                <a href="/statistic/content_analysis/" class="menu_h2  ">文章分析</a>

                <a href="/statistic/recommend_factor_page/" class="menu_h2  ">头条号指数</a>

                <a href="/statistic/audience_analysis/" class="menu_h2  ">用户分析</a>

                <a href="/statistic/subscriber_list_page" class="menu_h2  ">粉丝分析</a>


            </div>

            <div class="menu_block">
                <a class="menu_h1 menu_spread"><i></i>号外</a>

                <a href="/spread/apply/" ga="号外开通" class="menu_h2 ">开通</a>

            </div>


            <div class="menu_block">
                <a class="menu_h1 menu_wenda"><i></i>实验室<span>beta</span></a>
                <a href="/wenda/" class="menu_h2 submenu_wenda  ">头条问答
                    <i class="new-invite-num" data-node="new_invite_num" style="display: none;"></i>
                    <!-- <i class="sys-msg-dot" data-node="sys_msg_dot"></i> -->
                    <!-- <span class="new-invite-num" style="display:none"></span> -->
                </a>


            </div>


            <!-- <div class="menu_block alone">
             <a href="/message/" class="menu_h1  menu_notice alone"><i></i>通知<em class="new-messages-num" style=""></em></a>
             </div>-->
            <div class="menu_block">
                <a class="menu_h1 menu_settings"><i></i>设置</a>
                <a href="/edit_media_account/" class="menu_h2  menu_account"><i></i>帐号信息</a>
                <a href="/account_info/" class="menu_h2 "><i></i>帐号状态</a>
                <a href="/settings/" class="menu_h2 "><i></i>帐号设置</a>

            </div>
        </div>

        <div class="stage" id="div_count_msg" style="width: 80%">
            <div id="pagelet-list">
                <div class="page_tabs sclearfix">
                    <a href="javascript:;" class="page_tab selected">手动更新</a>
                    <ul class="sort-type">
                        <li>
                            <a href="javascript:;" class="sort-type-list list-all selected" data-node="list_all">全部</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="sort-type-list list-published" data-node="list_passed">已发表</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="sort-type-list list-failed" data-node="list_unpassed">未通过</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="sort-type-list list-draft" data-node="list_draft">草稿</a></li>
                        <li>
                            <a href="javascript:;" class="sort-type-list list-draft" data-node="list_hide">已撤回</a></li>
                    </ul>

                </div>

                <div class="essay-wrapper" data-node="essayBox">

                    <div class="essay-item" data-id="6345748693844492545" data-idd="6345751872044794369"
                         data-iid="6345751872044794369" data-gid="6345748693844492545" data-pid="6345751872044794369"
                         data-atype="0" style="display: none;">
                        <div class="essay-basic-info essay-show-image">
                            <div class="sclearfix">
                                <a class="essay-title" href="http://toutiao.com/item/6345751872044794369/"
                                   target="_blank">被刷屏的小米mix</a>
                            </div>

                            <div class="essay-static sclearfix">


                                <span class="essay-recommended" id="essay-recommended"></span>


                                <span class="essay-type">

					科技

			</span>
                                <span class="essay-time">2016-10-26 20:38</span>

                                <span class="essay-status j_essay-status">已撤回</span>


                                <span class="stip_hint ad_hint_class" data-title="该文章投放的广告类型是：不投广告"></span>


                                <span class="essay-status"></span>


                                <a href="/edit_article/?pgc_id=6345751872044794369"
                                   class="essay-static-action essay-modify after-pass-modify" data-node="essay_modify"
                                   data-passed="true" style="display: none;"><i class="essay-modify-icon"
                                                                                ga="列表页－修改"></i>修改</a>


                                <a href="javascript:;" class="essay-static-action essay-set-top" data-node="essaySetTop"
                                   data-gid="6345748693844492545" data-pid="6345751872044794369" data-tm="1477485492"
                                   ga="列表页－顶置" style="display: none;">置顶</a>


                                <div class="essay-static-action more-action-list j_more_action" data-node="more_action">
                                    更多操作
                                    <div class="more-action-list-div">
                                        <ul class="more-action-list-ul j_more_action_ul" data-node="more_action_ul">

                                            <li>
                                                <a href="javascript:;" class="essay-static-action j_essay_node_action"
                                                   data-node="essay_recovery" can-modify="true" is-top=""
                                                   can-top="6345748693844492545" ga="列表页－从主页撤回">恢复到主页</a>
                                            </li>

                                            <li>
                                                <a href="javascript:;"
                                                   class="essay-static-action essay-delete   j_more_essay_delete"
                                                   data-node="essay_delete" can-delete="true" data-passed="true"
                                                   ga="列表页－删除"><i class="essay-delete-icon"></i>删除</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>


                            </div>


                            <ul class="essay-dynamic sclearfix">

                                <li><span data-num="14322">推荐：1.4万</span></li>


                                <li><span data-num="1112">阅读：1112</span><span class="stip_hint"
                                                                              data-title="站内阅读：1083<br></span> 站外阅读：29"></span>
                                </li>

                                <li><span data-num="251">播放：251</span></li>


                                <li><span data-num="9">评论：9</span></li>
                                <li><span class="essay-repin" data-num="0" data-action="1">转发：0</span></li>
                                <li><span href="javascript:;" class="essay-fav" data-num="5" data-action="2">收藏：5</span>
                                </li>
                                <li class="share">
                                    <div class="sns-share">
                                        <ul class="sns-share-con sclearfix" data-node="sns_share"
                                            data-url="http://toutiao.com/item/6345751872044794369/"
                                            data-desc="来自头条 www.toutiao.com" data-text="【被刷屏的小米mix】（我在 @头条号 发了一篇文章）"
                                            data-pic="https://p.pstatp.com/thumb/f3d000f68a930726544">
                                            <li><a href="javascript:;" class="sns-weibo" data-type="tsina" data-node=""
                                                   title="分享到新浪微博" ga="列表页－分享到新浪"></a></li>
                                            <li><a href="javascript:;" class="sns-qzone" data-type="qzone" data-node=""
                                                   title="分享到QQ空间" ga="列表页－分享到QQ"></a></li>
                                            <li><a href="javascript:;" class="sns-renren" data-type="renren"
                                                   data-node="" title="分享到人人网" ga="列表页－分享到人人"></a></li>
                                        </ul>
                                        <div class="sns-share-tri">
                                            <i></i>
                                        </div>
                                    </div>
                                    <a href="javascript:;" class="essay-share"><i class="essay-share-icon"></i>分享</a>
                                </li>

                            </ul>


                            <div class="essay-image">
                                <a href="http://toutiao.com/item/6345751872044794369/" target="_blank"><img
                                        src="https://p.pstatp.com/list/126x82/f3d000f68a930726544"><i
                                        class="video-icon"></i></a>

                                <div class="modify-vposter" data-node="modify_vposter" data-id="6345751872044794369"
                                     ga="2视频封面-列表">修改视频封面
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="essay-item" data-id="6345004751859532033" data-idd="6345008965180457473"
                         data-iid="6345008965180457473" data-gid="6345004751859532033" data-pid="6345008965180457473"
                         data-atype="0">
                        <div class="essay-basic-info ">
                            <div class="sclearfix">
                                <a class="essay-title" href="http://toutiao.com/item/6345008965180457473/"
                                   target="_blank">java原生代码链接（jdbc）mysql数据库--新手篇</a>
                            </div>

                            <div class="essay-static sclearfix">


                                <span class="essay-recommended" id="essay-recommended"></span>


                                <span class="essay-type">

					科技

			</span>
                                <span class="essay-time">2016-10-24 20:35</span>

                                <span class="essay-status j_essay-status">已发表</span>


                                <span class="stip_hint ad_hint_class" data-title="该文章投放的广告类型是：不投广告"></span>


                                <span class="essay-status"></span>


                                <a href="/edit_article/?pgc_id=6345008965180457473"
                                   class="essay-static-action essay-modify after-pass-modify" data-node="essay_modify"
                                   data-passed="true"><i class="essay-modify-icon" ga="列表页－修改"></i>修改</a>


                                <a href="javascript:;" class="essay-static-action essay-set-top" data-node="essaySetTop"
                                   data-gid="6345004751859532033" data-pid="6345008965180457473" data-tm="1477312521"
                                   ga="列表页－顶置">置顶</a>


                                <div class="essay-static-action more-action-list j_more_action" data-node="more_action">
                                    更多操作
                                    <div class="more-action-list-div">
                                        <ul class="more-action-list-ul j_more_action_ul" data-node="more_action_ul">

                                            <li>
                                                <a href="javascript:;" class="essay-static-action j_essay_node_action"
                                                   data-node="essay_rollback" can-modify="true" is-top=""
                                                   can-top="6345004751859532033" ga="列表页－从主页撤回">从主页撤回</a>
                                            </li>

                                            <li>
                                                <a href="javascript:;"
                                                   class="essay-static-action essay-delete  disable-delete  j_more_essay_delete"
                                                   data-node="essay_delete" can-delete="false" data-passed="true"
                                                   ga="列表页－删除">删除</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>


                            </div>


                            <ul class="essay-dynamic sclearfix">

                                <li><span data-num="5991">推荐：5991</span></li>


                                <li><span data-num="638">阅读：638</span><span class="stip_hint"
                                                                            data-title="站内阅读：624<br></span> 站外阅读：14"></span>
                                </li>


                                <li><span data-num="2">评论：2</span></li>
                                <li><span class="essay-repin" data-num="13" data-action="1">转发：13</span></li>
                                <li><span href="javascript:;" class="essay-fav" data-num="238"
                                          data-action="2">收藏：238</span></li>
                                <li class="share">
                                    <div class="sns-share">
                                        <ul class="sns-share-con sclearfix" data-node="sns_share"
                                            data-url="http://toutiao.com/item/6345008965180457473/"
                                            data-desc="来自头条 www.toutiao.com"
                                            data-text="【java原生代码链接（jdbc）mysql数据库--新手篇】（我在 @头条号 发了一篇文章）">
                                            <li><a href="javascript:;" class="sns-weibo" data-type="tsina" data-node=""
                                                   title="分享到新浪微博" ga="列表页－分享到新浪"></a></li>
                                            <li><a href="javascript:;" class="sns-qzone" data-type="qzone" data-node=""
                                                   title="分享到QQ空间" ga="列表页－分享到QQ"></a></li>
                                            <li><a href="javascript:;" class="sns-renren" data-type="renren"
                                                   data-node="" title="分享到人人网" ga="列表页－分享到人人"></a></li>
                                        </ul>
                                        <div class="sns-share-tri">
                                            <i></i>
                                        </div>
                                    </div>
                                    <a href="javascript:;" class="essay-share"><i class="essay-share-icon"></i>分享</a>
                                </li>

                            </ul>


                        </div>

                    </div>

                    <div class="essay-item" data-id="6343776904131363074" data-idd="6343781452257165826"
                         data-iid="6343781452257165826" data-gid="6343776904131363074" data-pid="6343781452257165826"
                         data-atype="0">
                        <div class="essay-basic-info ">
                            <div class="sclearfix">
                                <a class="essay-title"
                                   href="http://mp.toutiao.com/preview_article/?pgc_id=6343781452257165826"
                                   target="_blank">给大家分享一下jquery时间工具</a>
                            </div>

                            <div class="essay-static sclearfix">






			<span class="essay-type">

					科技

			</span>
                                <span class="essay-time">2016-10-21 13:11</span>

                                <span class="essay-status j_essay-status">未通过</span>


                                <span class="stip_hint ad_hint_class" data-title="该文章投放的广告类型是：不投广告"></span>


                                <span class="essay-status"></span>


                                <span class="essay-confirm-reason"
                                      title="近期在全网出现过高度相似文章被认为是旧闻">近期在全网出现过高度相似文章被认为是旧闻</span>


                            </div>


                            <ul class="essay-dynamic sclearfix">


                                <li>

								<span class="j_reject_modify essay-static-action essay-modify after-pass-modify"
                                      href="javascript:;" data-title="近期在全网出现过高度相似文章被认为是旧闻，禁止修改">


								<i class="essay-modify-icon"
                                   style="-webkit-filter: grayscale(100%);-moz-filter: grayscale(100%);-ms-filter: grayscale(100%);-o-filter: grayscale(100%);filter: grayscale(100%);filter: gray;"
                                   ga="列表页－修改"></i>
							修改</span>
                                </li>


                                <li><a href="javascript:;" class="essay-delete" data-node="essay_delete"
                                       data-passed="false" ga="列表页－删除"><i class="essay-delete-icon"></i>删除</a></li>


                            </ul>


                        </div>

                    </div>
                </div>
                <div id="essay-loadmore" data-node="essay_loadmore" style="display: none;">
                    <img src="https://mp.toutiao.com/static/resource/pgc_web/static/style/image/loading.3c0c5bf.gif">
                    <span>获取数据...</span>
                </div>
                <div id="essay-nomore" data-node="essay_nomore" style="display: block;">
                    <span>没有更多数据啦</span>
                </div>
                <div id="essay-none" data-node="essay_none">
                    <span>没有符合条件的文章</span>
                </div>


            </div>
        </div>
    </div>
    <div id="pagelet-popalert">
        <div class="modal popalert-modal" id="popalert-modal" data-backdrop="static">
            <div class="modal-dialog-wrapper">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="popalert-info">
                                <div class="popalert-icon"><i></i>提示</div>
                                <div class="popalert-tip" id="popalert-tip"></div>
                            </div>
                            <div class="popalert-btns">
                                <button id="popalert-submit" class="popalert-submit new-btn submit"
                                        data-dismiss="modal">确定
                                </button>
                                <button id="popalert-cancel" class="popalert-cancel new-btn cancel"
                                        data-dismiss="modal">取消
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="sfoot_p">
    <div class="sfoot">

        <div>
            <a target="_blank" class="sfoot_about" href="http://web.toutiao.com/about/">关于今日头条</a>|
            <a target="_blank" href="/agreement/" class="sfoot_agreement">用户协议</a>|

            <a target="_blank" href="/infringement/" class="sfoot_agreement">侵权投诉</a>|

            <a target="_blank" href="http://web.toutiao.com/contact/" class="sfoot_contact">联系我们</a>
            © 2016 toutiao.com All Rights Reserved
        </div>
    </div>
</div>
<div id="pagelet-feedback" class="active" style="right: 95.5px;">

    <div class="fb-content">
        <div class="fb-content-title">
            <span class="fb-content-name">意见反馈</span>
            <span class="fb-content-close"></span>
        </div>
        <div class="fb-content-body">
            <a href="javascript:void(0);" class="fb-content-loadmore">查看更多消息</a>
            <div class="fb-content-list">

                <div class="fb-msg-time">
                    <div class="fb-msg-time-body">

                        以上是历史消息

                    </div>
                    <div class="fb-msg-time-spliter"></div>
                </div>


                <div id="fb-msg-1478010803611" class="fb-msg fb-msg-service">
                    <img class="fb-msg-hdimg" src="//p.pstatp.com/large/7b6000531c8825e9094">

                    <span class="fb-msg-text">亲爱的作者，请详细描述您的问题，尽可能地提供相关文章链接与截图，以便更好更快地为您解决。我们会在工作日的8:00-21:00, 节假日的9:30-18:30集中处理。或查看<a
                            href="https://mp.toutiao.com/selfservice/" target="_blank">常见问题</a>自助解决。<br>此消息为系统提示，请您耐心等待，人工客服会尽快回复您的反馈，谢谢！</span>

                </div>

            </div>
        </div>
        <div class="fb-content-input">
            <div class="fb-input-container">
                <textarea class="fb-input-area" placeholder="按shift+enter换行"></textarea>
                <div class="fb-input-action">
                    <input type="file" id="fb-img-upload" accept="image/*" name="photo"
                           data-url="/upload_photo/?type=json">
                    <span class="fb-img"></span>
                    <span class="fb-text-warn j-text-empty">请输入要反馈的内容</span>
                    <span class="fb-text-warn j-text-limit">最多可输入字数500个</span>
                    <span class="fb-text-limit">0/500</span>
                    <span class="fb-text-send"
                          data-hdimg="https://p.pstatp.com/large/e58000ba87c04afaa01">Enter 发送</span>
                </div>
            </div>
        </div>
    </div>


</div>
<!--  -->


<script type="text/javascript">
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-28423340-8', 'toutiao.com');
    ga('send', 'pageview');
</script>
<script type="text/javascript">
    !function (t, e, a, n, s, c) {
        t.ToutiaoAnalyticsObject = s, t[s] = t[s] || function () {
                (t[s].q = t[s].q || []).push(arguments)
            }, t[s].t = 1 * new Date, t[s].s = c;
        var i = e.createElement(a);
        i.async = 1, i.src = n, e.getElementsByTagName("head")[0].appendChild(i)
    }(window, document, "script", "//s3a.bytecdn.cn/ta/resource/v0/analytics.js", "ba");

    ba('create', 'b48de7ed65110e');
    ba('send', 'pageview');
</script>

<div class="bodymask_loading">
    <div class="bodymask_loading_bg"></div>
    <div class="bodymask_loading_img"></div>
</div>
<div class="bodymask"></div>

<!--[if lt IE 10 ]>
<script type="text/javascript">
    $(function () {
        setTimeout(function () {
            if (!$.cookie('browser_low_tiped')) {
                var $div = $('#browser_err');
                $div.show();
                $div.find('.j_close').click(function () {
                    $div.hide();
                    $.cookie('browser_low_tiped', 1, {
                        path: '/',
                        expires: 365
                    });
                });
            }
        }, 20);
    });
</script>
<![endif]-->
<div class="stip" style="top: 238px; left: 701px; display: none; opacity: 0.9;">该文章投放的广告类型是：不投广告</div>
<div class="stip"></div>
<div class="stip"></div>
<div class="stip" style="top: 272px; left: 599px; display: none; opacity: 0.9;">站内阅读：624<br> 站外阅读：14</div>
<div class="stip"></div>
<div class="stip"></div>
<img src="https://s0.bytecdn.cn/favicon.ico" style="display:none">

<link rel="stylesheet" type="text/css" href="${rootPath}/resources/user/setting/setting.css"/>
<script src="${rootPath}/resources/user/setting/setting.js"></script>
</body>
</html>
