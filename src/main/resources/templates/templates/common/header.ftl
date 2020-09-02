<div style="background-color: green;height: 200px">
    <h3 style="line-height: 100%">
        我是header
        <@shiro.guest>
            <!-- 没有登陆的状态 -->
            游客您好
        </@shiro.guest>
        <@shiro.user>
            <!-- 登入后的状态 -->
            用户 <@shiro.principal property="userName"/> 您好
           <#-- 用户 ${user.userName} 您好-->
        </@shiro.user>
    </h3>


</div>
