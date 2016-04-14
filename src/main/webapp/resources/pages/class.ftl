<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/info.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<div class="process-box">
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="done-font">基本信息</td>
            <td align="center" valign="middle" class="done-font">课程相关</td>
            <td align="center" valign="middle" class="do-font">联系人信息</td>
            <td align="center" valign="middle" class="do-font">完成报名</td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="line-margin"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-margin"></td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
        </tr>
    </table>
</div>
<form action="/Registration/update/contact" method="post">
    <div class="info-box">
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">参加活动时间</span></td>
                    <td class="arrow-two">
                        <select id="sex" name="winterOrSummer" class="info-select">
                            <option value ="暑假">暑假</option>
                            <option value ="寒假">寒假</option>
                        </select>
                    </td>
                    <td class="arrow-three" align="right">
                        <img src="../../images/icon_arrow.png" class="arrow">
                    </td>
                </tr>
            </table>
        </div>
        <div class="info-box-row">
            <span class="info-name">兴趣爱好</span>
            <span class="info-enter"><input id="interest" name="interest" class="info-input" type="text" placeholder="请输入孩子的兴趣爱好"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">参加目的</span>
            <span class="info-enter"><input id="purpose" name="purpose" class="info-input" type="text" placeholder="请输入孩子参加活动的目的"></span>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">身体状况</span>
            <span class="info-enter"><input id="health" name="health" class="info-input" type="text" placeholder="请输入孩子的身体状况"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">身高<span class="help-box">（米）</span></span>
            <span class="info-enter"><input id="height" name="height" class="info-input" type="text" placeholder="请输入孩子身高"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">体重<span class="help-box">（千克）</span></span>
            <span class="info-enter"><input id="weight" name="weight" class="info-input" type="text" placeholder="请输入孩子体重"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">视力</span>
            <span class="info-enter"><input id="eye" name="vision" class="info-input" type="text" placeholder="请输入孩子的左右眼视力"></span>
        </div>
    </div>
    <div class="bottom-box"></div>
    <div class="button-box">
        <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="step-td" align="center" valign="middle">
                    <a href="/Registration/update/basic"><input class="step-pre" type="button" value="上一步"></a>
                </td>
                <td class="step-td" align="center" valign="middle">
                    <input class="step-next" type="button" value="下一步" onclick="checkElementRequired();">
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>