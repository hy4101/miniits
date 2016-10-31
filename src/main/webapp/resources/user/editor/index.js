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
            $type: $("#div_type"),
            $title: $("#div_title"),
            $issueBtn: $("#issue_btn"),

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

                self.$issueBtn.click(function () {
                    var model = {
                        name:self.$title.val(),
                        text:UE.getEditor('sc_miniits_editor').getContent(),
                        type:self.$type.val()
                    };
                    $.ajax({
                        url:url+"save",
                        data:{jsonModel:JSON.stringify(model)},
                        dataType:"json",
                        success:function (data) {
                            debugger
                        },
                        error:function (data) {

                        }
                    })
                })

            }

        };

        pageInit();
    })
})(jQuery, window);
