<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/buy.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/finish.css">
</head>
<body>
<div class="finish-img">
    <img src="/images/icon_success.png">
</div>
<div class="finish-title">
    报名成功
</div>
<div class="finish-info">
    <div class="line"></div>
    <div class="title-box">
        <table style="width:100%">
            <tr>
                <td><img id="enter-img" src="/images/${finalRegistration.dealId}.jpg"></td>
                <td id="title-td" class="title-des">
                    <div class="title-name">${finalRegistration.dealName}</div>
                    <div class="title-age">时间：${finalRegistration.dealSession}</div>
                    <div class="title-price">￥${finalRegistration.userAmount}</div>
                </td>
            </tr>
        </table>
    </div>
    <div class="line"></div>
    <div class="children-info">
        <table style="width:100%">
            <tr>
                <td class="photo-td"><img class="photo-img" src="${finalRegistration.img}"></td>
                <td class="children-td">
                    <div class="children-name">${finalRegistration.childrenName}（${finalRegistration.englishName}）</div>
                    <div class="children-desc">${finalRegistration.sex} ${finalRegistration.birthDay}</div>
                    <div class="children-desc">${finalRegistration.currentSchool}</div>
                </td>
            </tr>
        </table>
    </div>
</div>
<#--<div class="order-box">
    <div class="line"></div>
    <div class="order-price">￥0.01+￥0.00运费</div>
    <div class="real-price">实付0.01</div>
    <div class="line"></div>
    <div class="order-id">订单号：E467890854234567898765</div>
    <div class="order-time">2016/04/09 16:10:00</div>
    <div class="order-time">完成付款</div>
</div>-->
</body>
</html>