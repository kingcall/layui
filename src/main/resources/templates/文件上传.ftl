<#include "common/layout.ftl">
<@layout "文件上传">
    <button type="button" class="layui-btn" id="test1">
        <i class="layui-icon">&#xe67c;</i>上传图片
    </button>

    <button class="layui-btn test" lay-data="{url: '/base/upload'}">上传图片</button>
    <button class="layui-btn test" lay-data="{url: '/base/upload', accept: 'file'}">上传文件</button>

</@layout>
<script>
    layui.use('upload', function () {
        var upload = layui.upload;
        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            , method: 'post'
            , url: '/base/upload' //上传接口
            , done: function (res) {
                //上传完毕回调
            }
            , error: function () {
                //请求异常回调
            }
        });

        upload.render({
            elem: '.test'
            , done: function (res, index, upload) {
                //获取当前触发上传的元素，一般用于 elem 绑定 class 的情况，注意：此乃 layui 2.1.0 新增
                var item = this.item;
            }
        })

    });

</script>
