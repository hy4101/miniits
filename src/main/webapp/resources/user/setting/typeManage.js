/**
 * Created by wq on 2016/11/17.
 */

(function ($, win) {
    $(function () {

        var settingMaster = null;
        var Util = $.Util;
        var blogType = null;
        var url = Util.getUrl() + "/type/";
        var winHeight = $(window).height();

        function pageInit() {
            settingMaster.init();
        }

        settingMaster = {

            $typeManageEdtir: $("#div_type_manage_edtir"),
            $newItem: $("#inp_new_item"),

            init: function () {
                var self = this;

                self.typeManageEdtir();
                self.cilcks();
            },

            typeManageEdtir: function () {
                var self = this;
                blogType = self.$typeManageEdtir.ligerTree({
                    nodeWidth: 200,
                    url: url + 'getTypes',
                    checkbox: false,
                    idFieldName: 'id',
                    parentIDFieldName: 'pid',
                    textFieldName: 'name',
                    isExpand: true,
                });
                ;

            },

            cilcks: function () {
                var self = this;

                $("#adsf").click(function () {
                    layer.msg('hello');
                })

                uodate = function (type) {
                    var item = blogType.getSelected();
                    switch (type) {
                        case 'new':
                            var name = self.$newItem.val();
                            if (Util.isStrEmpty(name))
                                return alert("内容不能为空");

                            if (name.length>22)
                                return alert("内容过长,请控制在22个字符内");

                            var blogTypeModel = {
                                pid: Util.isStrEmpty(item) ? 0 : item.data.id,
                                name: name
                            };
                            $.ajax({
                                url: url + "addType",
                                data: {dataModel: JSON.stringify(blogTypeModel)},
                                dataType: "json",
                                success: function (data) {
                                    blogType.reload();
                                }
                            })
                            break;
                        case 'up':
                            var name = self.$newItem.val();
                            if (Util.isStrEmpty(name))
                                return alert("内容不能为空");

                            if (Util.isStrEmpty(item))
                                return alert("请选择您要修改的分类");

                            if (name.length>22)
                                return alert("内容过长,请控制在22个字符内");

                            var blogTypeModel = {
                                id: item.data.id,
                                pid: item.data.pid,
                                name: name
                            };
                            $.ajax({
                                url: url + "addType",
                                data: {dataModel: JSON.stringify(blogTypeModel)},
                                dataType: "json",
                                success: function (data) {
                                    blogType.reload();
                                }
                            })
                            break;
                        case 'delete':

                            if (Util.isStrEmpty(item))
                                return alert("请选择您要删除的分类");

                            if (!Util.isStrEmpty(item.data.children))
                                return alert("该分类有子分类，无法删除");

                            $.ajax({
                                url: url + "delType",
                                data: {id: item.data.id},
                                dataType: "json",
                                success: function (data) {
                                    blogType.reload();
                                }
                            })

                            break;
                        default:
                            blogType.reload();
                            break;
                    }
                }

            },


        };

        pageInit();
    })
})(jQuery, window);
