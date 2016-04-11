<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<div class="process-box">
    <table style="width:100%;border-collapse:collapse;">
        <tr>
            <td>
                <div>
                    基本信息
                    <div style="float:left;width: 50%"></div><div class="process-done"></div>
                </div>
                <div class="process-img" style="background:url(../../images/icon_done.png) no-repeat;margin:8px;left:36%"></div>
            </td>
            <td>
                <div class="line-blue">课程相关</div>
                <div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div>
            </td>
            <td>
                <div class="line-blue">联系人信息</div>
                <div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div>
            </td>
            <td>
                <div>
                    完成报名
                    <div class="process-do"></div><div style="float:right;width: 50%"></div>
                </div>
                <div class="process-img" style="background:url(../../images/icon_do.png) no-repeat;margin:8px;left:36%"></div>
            </td>
        </tr>
    </table>
</div>
<form action="/Registration/update/finish">
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">第一联系人姓名</span>
            <span class="info-enter"><input id="contact1" name="contactName" class="info-input" type="text" placeholder="输入联系人姓名"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">所属称谓</span>
        <span class="info-enter">
            <select class="info-select" id="parent1" name="appellation">
                <option value ="父亲">父亲</option>
                <option value ="母亲">母亲</option>
            </select>
        </span>
        </div>
        <div class="info-box-row">
            <span class="info-name">手机号码</span>
            <span class="info-enter"><input id="phone1" name="contactPhone" class="info-input" type="text" placeholder="输入联系方式"></span>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">第二联系人姓名</span>
            <span class="info-enter"><input id="contact2" name="secondContactName" class="info-input" type="text" placeholder="输入联系人姓名"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">所属称谓</span>
        <span class="info-enter">
            <select class="info-select" id="parent2" name="secondAppellation">
                <option value ="mama">母亲</option>
                <option value ="papa">父亲</option>
            </select>
        </span>
        </div>
        <div class="info-box-row">
            <span class="info-name">手机号码</span>
            <span class="info-enter"><input id="phone2" name="secondContactPhone" class="info-input" type="text" placeholder="输入联系方式"></span>
        </div>
    </div>
    <div class="step-box">
        <div class="line"></div>
        <table style="width: 100%">
            <tr>
                <td class="step-td" align="center" valign="middle">
                    <a href="/Registration/update/class"><input class="step-pre" id="pre" type="button" value="上一步"></a>
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