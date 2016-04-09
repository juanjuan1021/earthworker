<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/buy.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<form action="/Registration/add" method="post">
<div class="title-box">
    <table>
        <tr>
            <td><img id="enter-img" src="/images/detail-title.jpg"></td>
            <td id="title-td" colspan="2" class="title-des">
                <div class="title">2016行远帆船夏令营</div>
                <div class="title-time">时间：2016/8/24 - 2016/8/28</div>
                <div class="title-price">￥2800</div>
                <input type="hidden" name="totalAmount" id="totalAmount" value="0.01">
            </td>
        </tr>
    </table>
</div>
<div class="info-box">
    <div class="info-box-row">
        <span class="info-name">孩子姓名</span>
        <span class="info-enter"><input id="name" class="info-input" name="childrenName" type="text" placeholder="请输入参营学生姓名"></span>
    </div>
    <div class="info-box-row">
        <span class="info-name">就读学校</span>
        <span class="info-enter"><input id="school" class="info-input" name="currentSchool" type="text" placeholder="请输入参营学生就读学校"></span>
    </div>
</div>

<div class="info-box">
    <div class="info-box-row">
        <span class="info-name">联系人</span>
        <span class="info-enter"><input id="contact" class="info-input" name="contactName" type="text" placeholder="请输入联系人姓名"></span>
    </div>
    <div class="info-box-row">
        <span class="info-name">所属称谓</span>
        <span class="info-enter">
            <select class="info-select" id="parent" name="appellation">
                <option value ="papa">父亲</option>
                <option value ="mama">母亲</option>
            </select>
        </span>
    </div>
    <div class="info-box-row">
        <span class="info-name">手机号码</span>
        <span class="info-enter"><input id="phone" class="info-input" type="text" name="contactPhone" placeholder="请输入联系方式"></span>
    </div>
</div>
<div class="buy-confirm">
    <div class="line"></div>
    <table style="width: 100%">
        <tr>
            <td class="buy-price">
                合计：<span class="confirm-price">￥2800</span>
            </td>
            <td class="buy-button">
                <input class="confirm-button" id="apply" type="submit" value="确认购买">
            </td>
        </tr>
    </table>
</div>
</form>
</body>

</html>