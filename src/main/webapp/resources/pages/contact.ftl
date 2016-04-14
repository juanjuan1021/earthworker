<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<div class="process-box">
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="done-font">基本信息</td>
            <td align="center" valign="middle" class="done-font">课程相关</td>
            <td align="center" valign="middle" class="done-font">联系人信息</td>
            <td align="center" valign="middle" class="do-font">完成报名</td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="line-margin"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-margin"></td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
        </tr>
    </table>
</div>
<form action="/Registration/update/finish" method="post">
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">第一联系人姓名</span>
            <span class="info-enter"><input id="contact1" name="contactName" class="info-input" type="text" placeholder="输入联系人姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">所属称谓</span></td>
                    <td class="arrow-two">
                        <select class="info-select" id="parent1" name="appellation">
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
            <span class="info-enter"><input id="phone1" name="contactPhone" class="info-input" type="text" placeholder="输入联系方式" required="required"></span>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">第二联系人姓名</span>
            <span class="info-enter"><input id="contact2" name="secondContactName" class="info-input" type="text" placeholder="输入联系人姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">所属称谓</span></td>
                    <td class="arrow-two">
                        <select class="info-select" id="parent2" name="secondAppellation">
                            <option value ="母亲">母亲</option>
                            <option value ="父亲">父亲</option>
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
            <span class="info-enter"><input id="phone2" name="secondContactPhone" class="info-input" type="text" placeholder="输入联系方式" required="required"></span>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">通讯地址</span>
            <span class="info-enter"><input id="address" name="address" class="info-input" type="text" placeholder="请输入孩子的通讯地址" required="required"></span>
        </div>
    </div>
    <div class="bottom-box"></div>
    <div class="button-box">
        <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="step-td" align="center" valign="middle">
                    <a href="/Registration/update/pre"><input class="step-pre" id="pre" type="button" value="上一步"></a>
                </td>
                <td class="step-td" align="center" valign="middle">
                    <input class="step-next" id="next" type="submit" value="完成">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>