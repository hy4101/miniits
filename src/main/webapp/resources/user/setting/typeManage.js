/**
 * Created by wq on 2016/11/17.
 */

(function ($, win) {
    $(function () {

        var settingMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/user/";
        var winHeight = $(window).height();
        function pageInit() {
            settingMaster.init();
        }

        settingMaster = {

            $typeManageEdtir: $("#div_type_manage_edtir"),

            init: function () {
                var self = this;

                self.typeManageEdtir();
                self.cilcks();
            },

            typeManageEdtir: function () {
                var self = this;
                self.$typeManageEdtir.ligerTree({
                    nodeWidth: 200,
                    url: url+'getTypes',
                    checkbox: false,
                    idFieldName: 'id',
                    parentIDFieldName: 'pid',
                    textFieldName: 'name',
                    // dataParmName:'detailModelList',
                    isExpand: false,
                    onSelect:function (data) {
                        if (Util.isStrEmpty(data.data))
                            return;
                        pid = data.data.id;
                        self.initOrgForm(pid);
                    }
                    // isLeaf: function (data) {
                    //     return !Util.isStrEmpty(data.resourceIds);
                    // },
                });;

            },

            cilcks: function () {
                var self = this;




            },


        };

        pageInit();
    })
})(jQuery, window);
