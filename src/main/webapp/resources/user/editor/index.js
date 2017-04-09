/**
 * Created by wq on 2016/10/25.
 */
(function ($, win) {
    $(function () {

        var Util = $.Util;
        var url = Util.getUrl() + "/user/article/";
        var winHeight = $(window).height();
        var editorMaster = null;
        var blogType = null;
        function pageInit() {
            editorMaster.init();
        }

        editorMaster = {

            $editorMsg: $("#div_editor_msg"),
            $type: $("#div_type"),
            $title: $("#div_title"),
            $blogType: $("#inp_blog_type"),
            $issueBtn: $("#issue_btn"),

            init: function () {
                var self = this;
                self.initEditor();
                self.cilcks();
            },

            initEditor: function () {
                var self = this;
                self.$editorMsg.css("min-height", winHeight - 270);

                blogType = self.$blogType.ligerComboBox({
                    height: 47,
                    selectBoxHeight: 200,
                    treeLeafOnly: false,
                    triggerIcon: 'false',
                    tree: {
                        textFieldName: 'name',
                        url: Util.getUrl() + '/type/getTypes',
                        checkbox: false,
                        idFieldName: 'id',
                        parentIDFieldName: 'pid',
                        textFieldName: 'name',
                        isExpand: true,
                    },
                    onSelected: function (value) {
                        this.setValue(value)
                    }

                });
                blogType.setValue($("#inp_new_type").val());

            },

            cilcks: function () {
                var self = this;
                self.$issueBtn.click(function () {

                    var name = self.$title.val();
                    var text = UE.getEditor('sc_miniits_editor').getContent();

                    if (Util.isStrEmpty(name))
                        return alert("文章标题不能为空");

                    if (Util.isStrEmpty(text))
                        return alert("内容不能为空");

                    if (Util.isStrEmpty(blogType.getValue()))
                        return alert("请选择分类");

                    if (name.length > 50)
                        return alert("文字标题过长，请控制在50个字符内");

                    var model = {
                        id:$("#inp_new_id").val(),
                        name: name,
                        text: text,
                        type: blogType.getValue()
                    };
                    $.ajax({
                        url: url + "save",
                        data: {jsonModel: JSON.stringify(model)},
                        dataType: "json",
                        success: function (data) {
                            win.location.href = $(".a-saveRequestUrl").attr("href");
                        },
                        error: function (data) {

                        }
                    })
                })

            }

        };

        pageInit();
    })
})(jQuery, window);
