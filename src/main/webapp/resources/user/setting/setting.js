/**
 * Created by wq on 2016/11/1.
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

            $countMsg: $("#div_count_msg"),

            init: function () {
                var self = this;

                self.initEditor();
                self.cilcks();
            },

            initEditor: function () {
                var self = this;


            },

            cilcks: function () {
                var self = this;

                settingFun = function (param) {
                    switch (param) {
                        case 'typeManages':
                            self.getTypeManageList();
                            break;
                        case 'collects':

                            break;
                        case 'subscibes':

                            break;
                        case 'fans':

                            break;
                        case 'redact':
                            break;
                        default:
                            break;
                    }
                }
                
                
            },
            getTypeManageList:function () {
                var self = this;
                self.$countMsg.empty('');
                self.$countMsg.load(url+"initialTypeManage",'');
            }

        };

        pageInit();
    })
})(jQuery, window);
