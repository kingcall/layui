<#include "common/layout.ftl">
<@layout>
    <div>
        <h1>登陆页面</h1>
        <form action="/login" method="post">
            <label> 用户名</label> <input type="text" name="username"><br>
            <label> 密码</label> <input type="password" name="password"><br>
            <input type="checkbox" name="rememberme" value="1"> 记住我7天<br>
            <input type="submit" value="提交">
        </form>

        <a href="/register">注册页面</a><br>
        <a href="/authc/index">登陆后的首页</a><br>
        <a href="/authc/admin">登陆后 需要admin角色的页面</a><br>
        <a href="/authc/renewable">登陆后 需要 添加和更新权限的页面</a><br>
        <a href="/authc/renewable">登陆后 需要删除权限的的页面</a><br>
        <a href="/logout">退出登陆(其实可以看出退出登陆也是需要登陆验证的)</a><br>
        <a href="/authc/rememberme">记住我(勾选了记住我下次是可以直接访问的)</a>
    </div>
</@layout>
