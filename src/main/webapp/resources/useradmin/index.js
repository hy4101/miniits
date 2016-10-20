/**
 * Created by wq on 2016/10/12.
 */
(function ($, win) {
    $(function () {

        var userAdminMaster = null;
        var Util = $.Util;
        var url = Util.getUrl() + "/user/article/";

        var totalPage = "";
        var dataList = "";

        function pageInit() {
            userAdminMaster.init();
        }

        userAdminMaster = {

            $item: $(".item"),

            init: function () {
                var self = this;
                self.getDataList();
                self.layui();
                self.cilcks();
            },

            getDataList: function (curr) {
                curr = Util.isStrEmpty(curr) ? 1 : curr;
                $.ajax({
                    url: url + "getArticles",
                    data: {filters: "", page: curr, rows: 30},
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        totalPage = data.totalPage;
                        dataList = data.detailModelList
                    },
                    error: function (data) {
                        alert(1)
                    }
                })
            },
            layui: function () {
                var self = this;
                layui.use(['laypage', 'layer'], function () {
                    var laypage = layui.laypage,
                        layer = layui.layer;

//测试数据
                    var data = [
                        '北京',
                        '上海',
                        '广州',
                        '深圳',
                        '杭州',
                        '长沙',
                        '合肥',
                        '宁夏',
                        '成都',
                        '西安',
                        '南昌',
                        '上饶',
                        '沈阳',
                        '济南',
                        '厦门',
                        '福州',
                        '九江',
                        '宜春',
                        '赣州',
                        '宁波',
                        '绍兴',
                        '无锡',
                        '苏州',
                        '徐州',
                        '东莞',
                        '佛山',
                        '中山',
                        '成都',
                        '武汉',
                        '青岛',
                        '天津',
                        '重庆',
                        '南京',
                        '九江',
                        '香港',
                        '澳门',
                        '台北'
                    ];

                    var nums = 5; //每页出现的数据量


                    //模拟渲染
                    var render = function (curr) {
                        //此处只是演示，实际场景通常是返回已经当前页已经分组好的数据
                        debugger
                        self.getDataList(curr);
                        var str = "";
                        for (var i = 0; i < dataList.length; i++) {
                            str += '<div class="cd-timeline-block"><div class="cd-timeline-img cd-picture f-l10"></div>' +
                            '<div class="cd-timeline-content">' +
                            '<h2>'+dataList[i].name+'</h2>' +
                            '<p>'+dataList[i].text+'</p>' +
                            '<a href="'+dataList[i].id+'" class="cd-read-more" target="_blank">阅读全文</a>' +
                            '<span class="cd-date">'+dataList[i].time+'</span> </div> </div>';
                        }
                        return str;
                    };

                    //调用分页
                    debugger
                    laypage({
                        cont: 'demo8',
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
                self.$item.click(function () {
                    var parents = $(this).parent("li").siblings();
                    $.each(parents, function (index, value) {
                        $(value).css("border-bottom", 0);
                    });
                    $(this.parentElement).css("border-bottom", "3px solid #ff5f63");
                })
            }

        };

        pageInit();
    })
})(jQuery, window);
