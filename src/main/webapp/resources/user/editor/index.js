/**
 * Created by wq on 2016/10/25.
 */
(function ($, win) {
    $(function () {

        var editorMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/user/article/";
        var winHeight = $(window).height();
        function pageInit() {
            editorMaster.init();
        }

        editorMaster = {

            $editorMsg: $("#div_editor_msg"),

            init: function () {
                var self = this;

                self.initEditor();
                self.cilcks();
            },

            initEditor: function () {
                var self = this;
                self.$editorMsg.css("min-height",winHeight-270);

            },

            cilcks: function () {
                var self = this;

            }

        };

        pageInit();
    })
})(jQuery, window);
