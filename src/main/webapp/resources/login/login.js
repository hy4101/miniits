/**
 * Created by wq on 2016/10/5.
 */
(function ($,win) {
    $(function () {

        var util = $.Util;
        var loginMaster = null;

        var code = null;
        function initialPage() {
            loginMaster.init();
        }

        loginMaster = {

            $iCode:$("#inp_code"),
            $cCode:$("#can_code"),
            $changeCodeBtn:$("#inp_change_code_btn"),

            init:function () {
                var self = this;
                self.createCode();
                self.clicks();
            },

            /**
             * 创建验证码
             */
            createCode:function () {
                var self = this;
                code = "";
                var codeLength = 4;
                var baseStr = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z')
                for (var i = 0;i<codeLength;i++){
                    var charIndex = Math.floor(Math.random()*60);
                    code += baseStr[charIndex];
                }

                if (!util.isStrEquals(code.length,codeLength)){
                    this.createCode();
                }
                self.showCode(code);
            },

            showCode:function (code) {
                var self = this;
                var c = document.getElementById("can_code");
                var ctx = c.getContext("2d");
                ctx.clearRect(0, 0, 1000, 1000);
                ctx.font = "80px 'Microsoft Yahei'";
                ctx.fillText(code, 0, 100);
                ctx.fillStyle = "white";
            },

            clicks:function () {
                var self = this;

                self.$changeCodeBtn.click(function () {
                    self.createCode();
                })
            }
        }

        initialPage();
    })
})(jQuery,window)