<#include "common/layout.ftl">
<@layout>
    <div>
        <h1>注册页面</h1>
        <form action="/register" method="post">
            <label> 用户名</label> <input type="text" name="username">
            <label> 密码</label> <input type="password" name="password">
            <input type="submit" value="提交">
        </form>
    </div>
</@layout>
