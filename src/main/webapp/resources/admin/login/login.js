/**
 * Created by wq on 2016/10/5.
 */
(function ($, win) {
    $(function () {

        var util = $.Util;
        var loginMaster = null;

        var code = null;

        function initialPage() {
            loginMaster.init();
        }

        loginMaster = {

            $userName: $("#inp_user_name"),
            $password: $("#inp_password"),
            $errorMessage: $("#p_error_message"),
            $iCode: $("#inp_code"),
            $cCode: $("#can_code"),
            $boo: $("#inp_boo"),
            $changeCodeBtn: $("#inp_change_code_btn"),
            $loginBtn: $("#inp_login_btn"),
            $loginForm: $("#login_form"),

            init: function () {
                var self = this;

                $('body').particleground({
                    dotColor: '#5cbdaa',
                    lineColor: '#5cbdaa'
                });

                self.createCode();
                self.clicks();
            },

            /**
             * 创建验证码
             */
            createCode: function () {
                var self = this;
                code = "";
                var codeLength = 4;
                var baseStr = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z')
                for (var i = 0; i < codeLength; i++) {
                    var charIndex = Math.floor(Math.random() * 60);
                    code += baseStr[charIndex];
                }

                if (!util.isStrEquals(code.length, codeLength)) {
                    this.createCode();
                }
                self.showCode(code);
            },

            showCode: function (code) {
                var self = this;
                var c = document.getElementById("can_code");
                var ctx = c.getContext("2d");
                ctx.clearRect(0, 0, 1000, 1000);
                ctx.font = "80px 'Microsoft Yahei'";
                ctx.fillText(code, 0, 100);
                ctx.fillStyle = "white";
            },

            clicks: function () {
                var self = this;

                self.$changeCodeBtn.click(function () {
                    self.createCode();
                });

                self.$loginBtn.click(function () {

                    var userName = self.$userName.val();
                    var password = self.$password.val();
                    var iCode = self.$iCode.val();
                    if (util.isStrEmpty(userName))
                        return self.$errorMessage.html("用户名不能为空");
                    else if (util.isStrEmpty(password))
                        return self.$errorMessage.html("密码不能为空");
                    else if (util.isStrEmpty(iCode)){
                        // return self.$errorMessage.html("验证码不能为空");
                    } else if (!util.isStrEqualsIgnorecase(iCode, code))
                        // return self.$errorMessage.html("验证码有误");

                    self.$errorMessage.html("");
                    self.$loginForm.submit();
                })

                if (util.isStrEquals(self.$boo.val(), "false"))
                    return self.$errorMessage.html("用户名或密码错误");

            }
        }

        initialPage();
    })
})(jQuery, window)