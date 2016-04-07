<html>
<head>
    <meta http-equiv="content-type" content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我要报名</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>

<form action="/Registration/add" method="post" role="form">
    <div class="form-group">
        <label for="dealName">课程名称</label>
        <input type="text" class="form-control" name="dealName" id="dealName" value="horse course" readonly="true">
    </div>

    <div class="form-group">
        <label for="totalAmount">课程金额</label>
        <input type="text" class="form-control" name="totalAmount" id="totalAmount" value="0.01" readonly="true">
    </div>

    <div class="form-group">
        <label for="childrenName">报名人</label>
        <input type="text" class="form-control" name="childrenName" id="childrenName" placeholder="请填写报名小朋友的姓名">
    </div>

    <button type="submit" class="btn btn-success">我要报名</button>
</form>

</body>
</html>