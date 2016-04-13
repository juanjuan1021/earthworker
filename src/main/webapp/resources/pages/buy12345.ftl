<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/buy.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<form action="/Registration/add" method="post">
    <div class="title-box">
        <table style="width:100%">
            <tr>
                <td><img id="enter-img" src="/images/detail-title.jpg"></td>
                <td id="title-td" class="title-des">
                    <div class="title-name">2016行远帆船夏令营</div>
                    <div class="title-price">￥2800</div>
                    <div class="title-age">适合年龄：6-16周岁</div>
                </td>
            </tr>
        </table>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">孩子姓名</span>
            <span class="info-enter"><input id="name" class="info-input" name="childrenName" type="text" placeholder="请输入参营学生姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">就读学校</span>
            <span class="info-enter"><input id="school" class="info-input" name="currentSchool" type="text" placeholder="请输入参营学生就读学校" required="required"></span>
        </div>
    </div>

    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">联系人</span>
            <span class="info-enter"><input id="contact" class="info-input" name="contactName" type="text" placeholder="请输入联系人姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">所属称谓</span></td>
                    <td class="arrow-two">
                        <select class="info-select" id="parent" name="appellation">
                            <option value ="父亲">父亲</option>
                            <option value ="母亲">母亲</option>
                        </select>
                    </td>
                    <td class="arrow-three" align="right">
                        <img src="../../images/icon_arrow.png" class="arrow">
                    </td>
                </tr>
            </table>
        </div>
        <div class="info-box-row">
            <span class="info-name">手机号码</span>
            <span class="info-enter"><input id="phone" class="info-input" type="text" name="contactPhone" placeholder="请输入联系方式" required="required"></span>
        </div>
    </div>
    <div class="button-box">
        <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="step-desc" align="center" valign="middle">
                    合计：<span class="confirm-price">￥2800</span>
                </td>
                <td class="button-td" align="center" valign="middle">
                    <input class="step-button" type="submit" value="确认购买">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>

</html>