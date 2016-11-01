/**
 * Created by wq on 2016/10/26.
 */

(function ($, win) {
    $(function () {
        var blogMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/blog/";
        var winHeight = $(window).height();

        function pageInit() {
            blogMaster.init();
        }

        blogMaster = {

            $tree: $("#ul_tree"),

            init: function () {
                var self = this;

                self.initTree();
                self.cilcks();
            },

            initTree: function () {
                var self = this;

                self.$tree.ligerSearchTree({
                    // nodeWidth: 200,
                        url: url + 'getTypes',
                    checkbox: false,
                    idFieldName: 'id',
                    parentIDFieldName: 'pid',
                    textFieldName: 'name',
                    isExpand: true,
                    onSelect: function (data) {

                    }
                });
            },

            cilcks: function () {
                var self = this;

            }

        };

        pageInit();

    })
})(jQuery, window)
