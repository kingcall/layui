<#include "common/layout.ftl">
<@layout "文件上传">
    <div class="layui-carousel" id="test1">
        <div carousel-item>
            <div><img src="/static/images/index/1.png"></div>
            <div><img src="/static/images/index/1.png"></div>
            <div><img src="/static/images/index/1.png"></div>
            <div><img src="/static/images/index/1.png"></div>
            <div><img src="/static/images/index/1.png"></div>
            <div><img src="/static/images/index/1.png"></div>

        </div>
    </div>
</@layout>

<script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
