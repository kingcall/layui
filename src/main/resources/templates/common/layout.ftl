<#macro layout title>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <title>${title}</title>
            <script type="text/javascript" src="/static/layui.js"></script>
            <link rel="stylesheet" href="/static/css/layui.css" media="all">
            <meta name="renderer" content="webkit">
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        </head>
        <body>
            <#nested>
        </body>
    </html>
</#macro>
