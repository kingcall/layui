<#include "common/layout.ftl">
<@layout>
    <div style="background: beige;height: 100px">
        <h1>登陆后的主页</h1>
    </div>

    <h4>链接</h4>
    <hr>
    <a href="/register">注册页面</a><br>
    <a href="/authc/index">登陆后的首页</a><br>
    <a href="/authc/admin">登陆后 需要admin角色的页面</a><br>
    <a href="/authc/renewable">登陆后 需要 添加和更新权限的页面</a><br>
    <a href="/authc/renewable">登陆后 需要删除权限的的页面</a><br>
    <a href="/logout">退出登陆</a><br>
    <a href="/authc/rememberme">记住我(勾选了记住我下次是可以直接访问的)</a>

    <h4>标签：菜单</h4>

    <@shiro.authenticated>
        <a href="/authc/admin">用户  <@shiro.principal property="userName"/> 已身份验证通过,但是没有权限不能直接访问</a><br>
    </@shiro.authenticated>

    <@shiro.notAuthenticated>
        <a>当前身份未认证（包括记住我登录的）</a><br>
    </@shiro.notAuthenticated>

    <@shiro.hasRole name="admin">
        <a href="/authc/admin">用户[<@shiro.principal property="userName"/>]拥有 admin 角色</a><br>
    </@shiro.hasRole>

    <@shiro.hasRole name="user">
        <a href="/authc/admin">用户[<@shiro.principal property="userName"/>]拥有 user 角色</a><br>
    </@shiro.hasRole>
    <@shiro.hasRole name="guest">
        <a href="/authc/admin">用户[<@shiro.principal property="userName"/>]拥有 guest 角色</a><br>
    </@shiro.hasRole>



    <@shiro.hasPermission name="Create">
        <a href="">用户[<@shiro.principal property="userName"/>]拥有Create 权限</a><br>
    </@shiro.hasPermission>

    <@shiro.hasPermission name="Update">
        <a href="">用户[<@shiro.principal property="userName"/>]拥有Update 权限</a><br/>
    </@shiro.hasPermission>

    <@shiro.hasPermission name="Delete">
        <a href="">用户[<@shiro.principal property="userName"/>]拥有Delete 权限</a><br/>
    </@shiro.hasPermission>


    <@shiro.hasPermission name="Retrieve">
        <a href="">用户[<@shiro.principal property="userName"/>]拥有Retrieve 权限</a><br/>
    </@shiro.hasPermission>


</@layout>
