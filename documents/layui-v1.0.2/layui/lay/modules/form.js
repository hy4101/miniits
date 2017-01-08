/** layui-v1.0.2 经典模块化前端框架 LGPL license By www.layui.com */
;layui.define("layer", function (e) {
    "use strict";
    var i = layui.jquery, a = layui.layer, t = layui.hint(), n = layui.device(), l = "form", c = ".layui-form", s = "layui-this", r = function () {
        this.config = {
            verify: {
                required: [/[\S]+/, "必填项不能为空"],
                phone: [/^1\d{10}$/, "请输入正确的手机号"],
                email: [/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, "邮箱格式不正确"],
                url: [/(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "链接格式不正确"],
                number: [/^\d+$/, "只能填写数字"],
                date: [/^(\d{4})[-\/](\d{1}|0\d{1}|1[0-2])([-\/](\d{1}|0\d{1}|[1-2][0-9]|3[0-1]))*$/, "日期格式不正确"],
                identity: [/(^\d{15}$)|(^\d{17}(x|X|\d)$)/, "请输入正确的身份证号"]
            }
        }
    };
    r.prototype.set = function (e) {
        var a = this;
        return i.extend(!0, a.config, e), a
    }, r.prototype.verify = function (e) {
        var a = this;
        return i.extend(!0, a.config.verify, e), a
    }, r.prototype.on = function (e, i) {
        return layui.onevent(l, e, i)
    }, r.prototype.render = function (e) {
        var a = this, n = {
            select: function () {
                var e = "请选择", a = "layui-form-select", t = "layui-select-title", n = i(c).find("select"), r = function (e, n) {
                    i(e.target).parent().hasClass(t) && !n || i("." + a).removeClass(a + "ed")
                }, u = function (e) {
                    var n = i(this), c = e.find("." + t);
                    c.on("click", function (i) {
                        e.hasClass(a + "ed") ? e.removeClass(a + "ed") : (r(i, !0), e.addClass(a + "ed"))
                    }), e.find("ul>li").on("click", function () {
                        var e = i(this), a = e.attr("lay-value"), t = n.attr("lay-filter");
                        n.val(a).removeClass("layui-form-danger"), c.find("input").val(e.text()), e.addClass(s).siblings().removeClass(s), layui.event(l, "select(" + t + ")", {
                            elem: n[0],
                            value: a
                        })
                    }), i(document).off("click", r).on("click", r)
                };
                n.each(function (n, l) {
                    var c = i(this), r = c.next("." + a), o = l.value, d = i(l.options[l.selectedIndex]), f = i(['<div class="layui-unselect ' + a + '">', '<div class="' + t + '"><input type="text" placeholder="' + (l.options[0].innerHTML ? l.options[0].innerHTML : e) + '" value="' + (o ? d.html() : "") + '" readonly class="layui-input layui-unselect">', '<i class="layui-edge"></i></div>', '<ul class="layui-anim layui-anim-upbit">' + function (e) {
                        var i = [];
                        return layui.each(e, function (e, a) {
                            (0 !== e || a.value) && i.push('<li lay-value="' + a.value + '" ' + (o === a.value ? 'class="' + s + '"' : "") + ">" + a.innerHTML + "</li>")
                        }), i.join("")
                    }(this.options) + "</ul>", "</div>"].join(""));
                    r[0] && r.remove(), c.after(f), u.call(this, f)
                })
            }, checkbox: function () {
                var e = {
                    checkbox: ["layui-form-checkbox", "layui-form-checked", "checkbox"],
                    _switch: ["layui-form-switch", "layui-form-onswitch", "switch"]
                }, a = i(c).find("input[type=checkbox]"), t = function (e, a) {
                    var t = i(this);
                    e.on("click", function () {
                        var i = t.attr("lay-filter");
                        t[0].checked ? (t[0].checked = !1, e.removeClass(a[1])) : (t[0].checked = !0, e.addClass(a[1])), layui.event(l, a[2] + "(" + i + ")", {
                            elem: t[0],
                            value: t[0].value
                        })
                    })
                };
                a.each(function (a, n) {
                    var l = i(this), c = l.attr("lay-skin");
                    "switch" === c && (c = "_" + c);
                    var s = e[c] || e.checkbox, r = l.next("." + s[0]), u = i(['<div class="layui-unselect ' + s[0] + (n.checked ? " " + s[1] : "") + '">', {_switch: "<i></i>"}[c] || "<span>" + (n.title || "勾选") + '</span><i class="layui-icon">&#xe618;</i>', "</div>"].join(""));
                    r[0] && r.remove(), l.after(u), t.call(this, u, s)
                })
            }, radio: function () {
                var e = "layui-form-radio", a = ["&#xe643;", "&#xe63f;"], t = i(c).find("input[type=radio]"), n = function (t) {
                    var n = i(this), s = "layui-anim-scaleSpring";
                    t.on("click", function () {
                        var r = n[0].name, u = n.parents(c), o = n.attr("lay-filter"), d = u.find("input[name=" + r + "]");
                        layui.each(d, function () {
                            var t = i(this).next("." + e);
                            this.checked = !1, t.removeClass(e + "ed"), t.find(".layui-icon").removeClass(s).html(a[1])
                        }), n[0].checked = !0, t.addClass(e + "ed"), t.find(".layui-icon").addClass(s).html(a[0]), layui.event(l, "radio(" + o + ")", {
                            elem: n[0],
                            value: n[0].value
                        })
                    })
                };
                t.each(function (t, l) {
                    var c = i(this), s = c.next("." + e), r = i(['<div class="layui-unselect ' + e + (l.checked ? " " + e + "ed" : "") + '">', '<i class="layui-anim layui-icon">' + a[l.checked ? 0 : 1] + "</i>", "<span>" + (l.title || "未命名") + "</span>", "</div>"].join(""));
                    s[0] && s.remove(), c.after(r), n.call(this, r)
                })
            }
        };
        return e ? n[e] ? n[e]() : t.error("不支持的" + e + "表单渲染") : layui.each(n, function (e, i) {
            i()
        }), a
    };
    var u = function () {
        var e = i(this), t = o.config.verify, s = null, r = "layui-form-danger", u = {}, d = e.parents(c), f = d.find("*[lay-verify]"), y = e.parents("form")[0], v = d.find("input,select,textarea"), h = e.attr("lay-filter");
        return layui.each(f, function (e, l) {
            var c = i(this), u = c.attr("lay-verify"), o = "", d = c.val(), f = "function" == typeof t[u];
            if (c.removeClass(r), t[u] && (f ? o = t[u](d, l) : !t[u][0].test(d)))return a.msg(o || t[u][1], {
                icon: 5,
                shift: 6
            }), n.android || n.ios || l.focus(), c.addClass(r), s = !0
        }), !s && (layui.each(v, function (e, i) {
            i.name && (/^checkbox|radio$/.test(i.type) && !i.checked || (u[i.name] = i.value))
        }), layui.event.call(this, l, "submit(" + h + ")", {elem: this, form: y, field: u}))
    }, o = new r, d = i("body");
    o.render(), d.on("reset", c, function () {
        setTimeout(function () {
            o.render()
        }, 50)
    }), d.on("submit", c, u).on("click", "*[lay-submit]", u), e(l, function (e) {
        return o.set(e)
    })
});