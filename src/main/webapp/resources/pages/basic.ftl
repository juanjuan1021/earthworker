<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>地球小行者</title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/info.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
</head>
<body>
<div class="process-box">
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="done-font">基本信息</td>
            <td align="center" valign="middle" class="do-font">课程相关</td>
            <td align="center" valign="middle" class="do-font">联系人信息</td>
            <td align="center" valign="middle" class="do-font">完成报名</td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle" class="line-margin"></td>
            <td align="center" valign="middle" class="line-blue"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-grey"></td>
            <td align="center" valign="middle" class="line-margin"></td>
        </tr>
    </table>
    <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_done.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
            <td align="center" valign="middle"><div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div></td>
        </tr>
    </table>
</div>
<form action="/Registration/update/class" method="post">
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">孩子姓名</span>
            <span class="info-enter"><input id="childrenName" name="childrenName" class="info-input" type="text" placeholder="请输入孩子姓名" value='${(registration.childrenName)!""}'></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">英文名<span class="help-box">（选填）</span></span>
            <span class="info-enter"><input id="englishName" name="englishName" class="info-input" type="text" placeholder="请输入孩子英文姓名" value='${(registration.englishName)!""}'></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">身份证号</span>
            <span class="info-enter"><input id="idNumber" name="idNumber" class="info-input" type="text" placeholder="请输入孩子的身份证号码" value='${(registration.idNumber)!""}'></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">年龄</span>
        <span class="info-enter"><input id="birthDay" name="birthDay" class="info-input" type="number" placeholder="请输入孩子的年龄" value='${(registration.birthDay)!""}'></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">现居住城市</span>
            <span class="info-enter"><input id="nation" name="nation" class="info-input" type="text" placeholder="请输入孩子居住的城市" value='${(registration.nation)!""}'></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style="width: 20%;"><img id="preview" style="width: 100%;" src='${(registration.img)!"data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%3F%3E%0A%3Csvg%20width%3D%22153%22%20height%3D%22153%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%3E%0A%20%3Cg%3E%0A%20%20%3Ctitle%3ENo%20image%3C/title%3E%0A%20%20%3Crect%20id%3D%22externRect%22%20height%3D%22150%22%20width%3D%22150%22%20y%3D%221.5%22%20x%3D%221.500024%22%20stroke-width%3D%223%22%20stroke%3D%22%23666666%22%20fill%3D%22%23e1e1e1%22/%3E%0A%20%20%3Ctext%20transform%3D%22matrix%286.66667%2C%200%2C%200%2C%206.66667%2C%20-960.5%2C%20-1099.33%29%22%20xml%3Aspace%3D%22preserve%22%20text-anchor%3D%22middle%22%20font-family%3D%22Fantasy%22%20font-size%3D%2214%22%20id%3D%22questionMark%22%20y%3D%22181.249569%22%20x%3D%22155.549819%22%20stroke-width%3D%220%22%20stroke%3D%22%23666666%22%20fill%3D%22%23000000%22%3E%3F%3C/text%3E%0A%20%3C/g%3E%0A%3C/svg%3E"}' alt="Image preview" /></td>
                    <td><span class="info-name" style="width:100%;margin-left:10px">一寸免冠照片</span></td>
                    <td id="imgTd" align="right">
                        <a href="javascript:;" class="file">上传照片<img src="../../images/icon_arrow.png" class="arrow">
                            <input id="image" type="file" accept="image/*" onchange="loadImageFile();"/>
                            <input id="uploadImg" name="img" type="hidden" value="${(registration.img)!''}"/>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="bottom-box"></div>
    <div id="notice" class="notice"></div>
    <div class="button-box">
        <div class="button-div">
            <input class="step-button" type="button" value="下一步" onclick="checkElementRequired();">
        </div>
    </div>
</form>
</body>
</html>