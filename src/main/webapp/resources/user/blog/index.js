/**
 * Created by wq on 2016/10/26.
 */

(function ($, win) {
    $(function () {
        var blogMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/blog/";

        var winHeight = $(window).height();


        var totalPage = "";
        var dataList = "";

        function pageInit() {
            blogMaster.init();
        }

        blogMaster = {

            $tree: $("#ul_tree"),

            init: function () {
                var self = this;

                self.initTree();
                self.getDataList();
                self.cilcks();
            },

            initTree: function () {
                var self = this;

                self.$tree.ligerSearchTree({
                    url: Util.getUrl() + '/type/getTypes',
                    checkbox: false,
                    idFieldName: 'id',
                    parentIDFieldName: 'pid',
                    textFieldName: 'name',
                    isExpand: true,
                    onSelect: function (data) {

                    }
                });
            },





            getDataList: function (curr) {
                var self = this;
                // $(self.$containerMain.find("li")[0]).css("border-bottom", "3px solid #ff5f63");
                // self.$params.val(sessionStorage.getItem("params"));

                curr = Util.isStrEmpty(curr) ? 1 : curr;
                // var filters = Util.isStrEmpty(self.$params.val()) ? "" : "name?" + self.$params.val();
                $.ajax({
                    url: Util.getUrl() + "/user/article/getArticles",
                    data: {filters: "", page: curr, rows: 30},
                    dataType: "json",
                    async: false,
                    success: function (data) {

                        totalPage = data.totalPage;
                        dataList = data.detailModelList;
                        self.articlePage();

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
                        sessionStorage.removeItem("params");
                        var str = "";
                        for (var i = 0; i < dataList.length; i++) {
                            var date = TimeObjectUtil.longMsTimeConvertToDateTime(dataList[i].time);
                            str += '<div class="f-mt10 f-bb1"><ul class="cd-timeline-content clearfix">' +
                                '<li class="f-fl f-mt2">' + date + '</li> ' +
                                '<li class="f-fl f-ml50 f-fs20 f-mw60">' +
                                '<a title="' + dataList[i].name + '" class="f-dw" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "article:select", dataList[i].id) + '">' + dataList[i].name + '</a></li>' +
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
                        cont: 'div_minits_pages',
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

                // self.$params.keypress(function (e) {
                //     var code = event.keyCode;
                //     if (13 == code){
                //         sessionStorage.setItem("params",self.$params.val());
                //         location.reload();
                //     }
                // })

                // self.$searchArticleBtn.click(function () {
                //     sessionStorage.setItem("params",self.$params.val());
                //     location.reload();
                // })


                // self.$item.click(function () {
                //     var parents = $(this).parent("li").siblings();
                //     $.each(parents, function (index, value) {
                //         $(value).css("border-bottom", 0);
                //     });
                //     $(this.parentElement).css("border-bottom", "3px solid #ff5f63");
                //
                // });

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
})(jQuery, window)
