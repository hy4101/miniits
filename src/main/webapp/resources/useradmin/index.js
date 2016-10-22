/**
 * Created by wq on 2016/10/12.
 */
(function ($, win) {
    $(function () {

        var userAdminMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/user/article/";

        var totalPage = "";
        var dataList = "";

        function pageInit() {
            userAdminMaster.init();
        }

        userAdminMaster = {

            $item: $(".item"),
            $containerMain: $(".container-main"),
            $params: $("#div_params"),
            $searchArticleBtn: $("#sp_search_article_btn"),

            init: function () {
                var self = this;

                self.getDataList();
                self.cilcks();
            },

            getDataList: function (curr) {
                var self = this;
                $(self.$containerMain.find("li")[0]).css("border-bottom", "3px solid #ff5f63");

                curr = Util.isStrEmpty(curr) ? 1 : curr;
                var filters = Util.isStrEmpty(self.$params.val()) ? "" : "name?" + self.$params.val();
                $.ajax({
                    url: url + "getArticles",
                    data: {filters: filters, page: curr, rows: 30},
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        totalPage = data.totalPage;
                        dataList = data.detailModelList;

                    },
                    error: function (data) {
                    }
                })

            },
            articlePage: function () {
                var self = this;
                layui.use(['laypage', 'layer'], function () {
                    var laypage = layui.laypage;

                    //模拟渲染
                    var render = function (curr) {
                        self.getDataList(curr);
                        var str = "";
                        for (var i = 0; i < dataList.length; i++) {
                            var date = TimeObjectUtil.longMsTimeConvertToDateTime(dataList[i].time);
                            str += '<div class="f-mt10 f-bb1"><ul class="cd-timeline-content clearfix">' +
                                '<li class="f-fl f-mt2">' + date + '</li> ' +
                                '<li class="f-fl f-ml50 f-fs20 f-mw60">' +
                                '<a title="查看" class="f-dw" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "article:select", dataList[i].id) + '">' + dataList[i].name + '</a></li>' +
                                '<li class="f-fr f-mr50">' +
                                '<img title="查看人数" src="' + Util.getUrl() + '/resources/commons/images/see.png" />' + dataList[i].see + ' -- ' +
                                '<img title="回复人数" src="' + Util.getUrl() + '/resources/commons/images/revert.png" />' + dataList[i].revert + ' -- ' +
                                '<a title="修改" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "article:update", dataList[i].id) + '">' +
                                '<img src="' + Util.getUrl() + '/resources/commons/images/update.png" /></a> -- ' +
                                '<a title="删除" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}','{2}'])", "article:delete", dataList[i].id, dataList[i].name) + '">' +
                                '<img src="' + Util.getUrl() + '/resources/commons/images/delete.png" /></a>' +
                                '</li></ul></div>';
                        }
                        return str;
                    };

                    //调用分页
                    laypage({
                        cont: 'demo8',
                        pages: totalPage,
                        skip: true,
                        jump: function (obj) {
                            document.getElementById('cd-timeline').innerHTML = render(obj.curr);
                        }
                    });

                });

            },

            cilcks: function () {
                var self = this;

                self.articlePage(1);
                self.$searchArticleBtn.click(function () {
                    self.getDataList(1);
                })
                self.$item.click(function () {
                    var parents = $(this).parent("li").siblings();
                    $.each(parents, function (index, value) {
                        $(value).css("border-bottom", 0);
                    });
                    $(this.parentElement).css("border-bottom", "3px solid #ff5f63");

                });

                articleSelect = function (param) {
                    switch (param) {
                        case 'dynamic':
                            self.getDataList(1);
                            break;
                        case 'collects':

                            break;
                        case 'subscibes':

                            break;
                        case 'fans':

                            break;
                        default:
                            break;
                    }
                }

                $.subscribe('article:select', function (event, id) {
                    var jsonData = {id: id, pid: pid};
                    orgDialog = $.ligerDialog.open({
                        height: 620,
                        width: 600,
                        title: '修改机构',
                        url: url + 'initialSaveDialog',
                        urlParms: {
                            jsonData: JSON.stringify(jsonData)
                        }
                    })
                });

                $.subscribe('article:delete', function (event, id, name) {
                    var deleteDialog = layer.confirm('<div style="text-align: center"><img title="删除" src="' + Util.getUrl() + '/resources/commons/images/delete_face.png" /></div><br>' +
                        '您确定要删除 [ ' + name + ' ] ？', {
                        btn: ['删除', '取消'],
                        offset: "200",
                    }, function () {
                        $.ajax({
                            url: url + "delete",
                            data: {id: id},
                            dataType: "json",
                            success: function (data) {
                                self.articlePage();
                                layer.msg('删除成功', {icon: 1});
                            },
                            error: function (data) {
                                layer.msg('删除失败', {icon: 1});
                            }
                        })
                        layer.msg('删除成功', {icon: 1});
                    });
                });
            }

        };

        pageInit();
    })
})(jQuery, window);
