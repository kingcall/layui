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
                    <li class="layui-nav-item"><a data-src="">产品1</a></li>
                    <li class="layui-nav-item"><a data-src="">产品2</a></li>
                    <li class="layui-nav-item"><a data-src="">产品3</a></li>
                    <li class="layui-nav-item"><a data-src="">产品4</a></li>
                    <li class="layui-nav-item"><a data-src="">产品5</a></li>
                    <li class="layui-nav-item"><a data-src="">产品6</a></li>
                    <li class="layui-nav-item"><a data-src="">产品7</a></li>
                    <li class="layui-nav-item"><a data-src="">产品8</a></li>
                    <li class="layui-nav-item"><a data-src="">产品9</a></li>
                    <li class="layui-nav-item"><a data-src="">产品10</a></li>
                    <li class="layui-nav-item"><a data-src="">产品11</a></li>
                    <li class="layui-nav-item"><a data-src="">产品12</a></li>
                    <li class="layui-nav-item"><a data-src="">产品13</a></li>
                    <li class="layui-nav-item"><a data-src="">产品14</a></li>
                    <li class="layui-nav-item"><a data-src="">产品15</a></li>
                    <li class="layui-nav-item"><a data-src="">产品16</a></li>
                    <li class="layui-nav-item"><a data-src="">产品17</a></li>
                    <li class="layui-nav-item"><a data-src="">产品18</a></li>
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

    $('.layui-nav-item a').on('click', function () {
        var dataid = $(this);
        var address =$(this).attr("data-src");
        console.log("===================================")
        console.log(dataid)
        console.log(address)
        $("#content").innerHTML="dfdsssssssssssssssssss"


    })

</script>