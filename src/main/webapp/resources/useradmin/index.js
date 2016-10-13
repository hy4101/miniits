/**
 * Created by wq on 2016/10/12.
 */
(function ($,win) {
    $(function () {

        var userAdminMaster = null;
        var Util = $.Util;

        function pageInit() {
            userAdminMaster.init();
        }

        userAdminMaster = {

            $item:$(".item"),

            init:function () {
                var self = this;
                self.cilcks();
            },

            cilcks:function () {

                var self = this;
                self.$item.click(function () {
                    var parents = $(this).parent("li").siblings();
                    $.each(parents,function (index,value) {
                        $(value).css("border-bottom",0);
                    });
                    $(this.parentElement).css("border-bottom","3px solid #ff5f63");
                })
            }

        };

        pageInit();
    })
})(jQuery,window);
