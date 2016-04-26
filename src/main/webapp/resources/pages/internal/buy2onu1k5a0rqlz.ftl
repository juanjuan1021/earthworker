<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>地球小行者</title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/buy.js" type="text/javascript"></script>
    <script src="/js/info.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
    <script>
        var stockFlag = '${(stockFlag)!""}';
        $(document).ready(function(){
            if(stockFlag == "0"){
                $("#notice").css("display","block");
                $("#notice").text("库存不足！");
                $("#confirm").attr("class","confirm-disable");
                $("#confirm").attr("onclick","");
            }
        });
    </script>
</head>
<body>
<form action="/Registration/add" method="post">
    <div class="title-box">
        <table style="width:100%">
            <tr>
                <td><img id="enter-img" src="/images/2onu1k5a0rqlz.jpg"></td>
                <td id="title-td" class="title-des">
                    <div class="title-name">马术夏令营</div>
                    <div class="title-age">时间：待定</div>
                    <div class="title-price">￥8980</div>
                    <input type="hidden" name="dealName" id="dealName" value="马术夏令营">
                    <input type="hidden" name="dealId" id="dealId" value="2onu1k5a0rqlz">
                    <input type="hidden" name="totalAmount" id="totalAmount" value="8980">
                    <input type="hidden" name="userAmount" id="userAmount" value="8980">
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
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">性别</span></td>
                    <td class="arrow-two">
                        <select id="sex" name="sex" class="info-select">
                            <option id="man" value ="男">男</option>
                            <option id="woman" value ="女">女</option>
                        </select>
                    </td>
                    <td class="arrow-three" align="right">
                        <img src="/images/icon_arrow.png" class="arrow">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">家长姓名</span>
            <span class="info-enter"><input id="contact" class="info-input" name="contactName" type="text" placeholder="请输入家长姓名"></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">与孩子关系</span></td>
                    <td class="arrow-two">
                        <select class="info-select" id="parent" name="appellation">
                            <option value ="父亲">父亲</option>
                            <option value ="母亲">母亲</option>
                        </select>
                    </td>
                    <td class="arrow-three" align="right">
                        <img src="/images/icon_arrow.png" class="arrow">
                    </td>
                </tr>
            </table>
        </div>
        <div class="info-box-row">
            <span class="info-name">家长联系方式</span>
            <span class="info-enter"><input id="phone" class="info-input" type="tel" name="contactPhone" placeholder="请输入家长联系方式"></span>
        </div>
    </div>
    <div id="notice" class="notice"></div>
    <div class="button-box">
        <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="step-desc" align="center" valign="middle">
                    合计：<span class="confirm-price">￥8980</span>
                </td>
                <td class="button-td" align="center" valign="middle">
                    <input id="confirm" class="step-button" type="button" value="确认购买" onclick="checkElementRequired()">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>

</html>