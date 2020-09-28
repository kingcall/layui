<#include "common/layout.ftl">
<@layout "菜单">


    <div class="fly-header layui-bg-black">
        <div class="layui-container">
            <a class="fly-logo" href="/">
                <img src="/static/images/logo.png" alt="layui">
            </a>
            <ul class="layui-nav fly-nav layui-hide-xs">
                <li class="layui-nav-item layui-this">
                    <a href="/home"><i class="iconfont icon-jiaoliu"></i>交流</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/case"><i class="iconfont icon-iconmingxinganli"></i>企业案例</a>
                </li>
                <li class="layui-nav-item">
                    <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-container">
        <div class="layui-layout layui-layout-admin">
            <div class="layui-side layui-bg-black">
                <div class="layui-side-scroll">
                    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
                        <#list data as item>
                            <li class="layui-nav-item"><a data-src="/menu/1">${item}</a></li>
                        </#list>
                    </ul>
                </div>
            </div>

            <div class="layui-body">
                <!-- 内容主体区域 -->
                <div id="content" style="padding: 1px;">
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                    <h1>内容主体区域</h1>
                </div>
            </div>
        </div>
    </div>
</@layout>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

    });

    $('.layui-nav-item a').on('click', function () {
        var address = $(this).attr("data-src");
        $.post(
            "http://localhost" + address,
            {
                id: 1
            },
            function (data, status) {
                console.log(data);
                console.log(status);
                $("#content").text(data);
            },
        );
    })


</script>