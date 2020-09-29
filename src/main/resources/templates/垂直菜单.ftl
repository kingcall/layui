<#include "common/layout.ftl">
<@layout "菜单">
    <style>
        .layui-nav-tree .layui-nav-item a{
            height: 35px;
        }
    </style>

    <div class="layui-container">
        <ul class="layui-nav layui-nav-tree layui-nav-side layui-bg-green" style="top: 70px">
            <#list data as item >
                <li class="layui-nav-item"><a data-src="/menu/1">${item}</a></li>
            </#list>

        </ul>
        <div class="layui-col-md10 layui-body" style="margin-top: 10px">
            <div id="content" style="padding: 1px;">
               ${initContent}
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
            address,
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