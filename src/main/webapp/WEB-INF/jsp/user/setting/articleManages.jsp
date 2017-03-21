<%--
  Created by IntelliJ IDEA.
  User: wq
  Date: 2017/3/21
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/web/layout/resources.jsp" %>
<html>
<link href="${rootPath}/resources/commons/ligerUI/lib/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet"
      type="text/css">
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/core/base.js" type="text/javascript"></script>
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerTree.js" type="text/javascript"></script>
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/custom/ligerGridEx.js" type="text/javascript"></script>
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/ligerui.all.js" type="text/javascript"></script>
<script src="${rootPath}/resources/commons/ligerUI/lib/ligerUI/js/plugins/ligerComboBox.js"
        type="text/javascript"></script>

<head>
    <script>
        (function ($, win) {
            $(function () {
                var settingMaster = null;
                var Util = $.Util;
                var url = Util.getUrl() + "/type/";

                function pageInit() {
                    settingMaster.init();
                }

                settingMaster = {

                    $typeManageList: $("#inp_type_manage_list"),
                    $newItem: $("#inp_new_item"),

                    init: function () {
                        var self = this;

                        self.typeManageEdtir();
                        self.initForm();
                        self.cilcks();
                    },

                    typeManageEdtir: function () {
                        var self = this;

                        self.$typeManageList.ligerComboBox({
                            width: 180,
                            height: 34,
                            slide: true,
                            selectBoxWidth: 180,
                            selectBoxHeight: 200,
                            valueField: 'name',
                            treeLeafOnly: false,
                            tree: {
                                url: url + 'getTypes',
                                checkbox: false,
                                idFieldName: 'id',
                                parentIDFieldName: 'pid',
                                textFieldName: 'name'
                            },
                            onSelected: function (treeName) {
                                this.setText(treeName);
                            }
                        });

                    },
                    initForm: function () {
                        var self = this;

                        $("#adfasdf").ligerGrid($.LigerGridEx.config({
                            height: '97.5%',
                            url: Util.getUrl() + '/user/article/getArticles',
                            parms: {
                                filters: ""
                            },
                            columns: [
                                {name: 'id', hide: true, isAllowHide: false},
                                {display: "文章名称", name: "name", width: "20%"},
                                {display: "创建时间", name: "time", width: "20%"},
                                {display: "修改时间", name: "type", width: "10%"},
                                {display: "查看量", name: "see", width: "10%"},
                                {display: '评论量', name: 'revert', width: '10%'},
                                {display: '类目', name: 'revert', width: '10%'},
                                {
                                    display: '操作', name: 'operator', width: '20%', render: function (row) {
                                    var html = '<a title="货物跟踪" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "order:select", row.id) + '">查看</a> / ';
                                    html += '<a title="运单详情" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "order:select", row.id) + '">修改</a> / ';
                                    html += '<a title="运单详情" href="javascript:void(0)" onclick="javascript:' + Util.format("$.publish('{0}',['{1}'])", "order:select", row.id) + '">删除</a>';
                                    return html;
                                }
                                }
                            ]
                        }));
                    },
                    cilcks: function () {
                        var self = this;

                        $("#adsf").click(function () {
                            layer.msg('hello');
                        })

                    },
                };
                pageInit();
            })
        })(jQuery, window)
    </script>
</head>
<body>

<div style="width: auto;height: auto">
    <%--文章检索条件--%>
    <div style="width: 100%;height: 50px;border-bottom: 1px solid #c8c8c8">
        <div style="width: 30%" class="f-fl"><input id="inp_type_manage_list" placeholder="选择类别检索"></div>
        <div style="width: 30%" class="f-fl">
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" class="form-control inp-sty" id="inp_article_name" placeholder="输入文件名称检索"
                           style="height: 34px;width: 200px">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button" onclick="javascript:uodate('search')">检索</button>
                </span>
                </div>
            </div>
        </div>
    </div>

    <div id="adfasdf"></div>
</div>
</body>
</html>