<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我的报名</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/earthworker-1.0-SNAPSHOT/resources/js/lib/jquery.min.js"></script>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>报名人</th>
        <th>课程名称</th>
        <th>支付金额</th>
        <th>支付状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <#list registrationList as list>
    <tr>
        <td>${list.childrenName}</td>
        <td>${list.dealName}</td>
        <td>${list.totalAmount}</td>
        <td>${list.payStatus}</td>
        <td>完善报名信息</td>
    </tr>
    </#list>
    </tbody>
</table>
</body>
</html>