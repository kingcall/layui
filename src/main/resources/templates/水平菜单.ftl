<#include "common/layout.ftl">
<@layout "菜单">
    <style>
        .layui-layout-admin .layui-body {
            top: 10px;
            bottom: 44px;
        }
    </style>
    <div class="layui-layout layui-layout-admin">
        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
                    <li class="layui-nav-item"><a href="">产品1</a></li>
                    <li class="layui-nav-item"><a href="">产品2</a></li>
                    <li class="layui-nav-item"><a href="">产品3</a></li>
                    <li class="layui-nav-item"><a href="">产品4</a></li>
                    <li class="layui-nav-item"><a href="">产品5</a></li>
                    <li class="layui-nav-item"><a href="">产品6</a></li>
                    <li class="layui-nav-item"><a href="">产品7</a></li>
                    <li class="layui-nav-item"><a href="">产品8</a></li>
                    <li class="layui-nav-item"><a href="">产品9</a></li>
                    <li class="layui-nav-item"><a href="">产品10</a></li>
                </ul>
            </div>
        </div>

        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div style="padding: 1px;">
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

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>
</@layout>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

    });
</script>