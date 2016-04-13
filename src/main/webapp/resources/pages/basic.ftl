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
    <table style="width:100%;border-collapse:collapse;">
        <tr>
            <td>
                <div class="done-font">
                    基本信息
                    <div style="float:left;width: 50%"></div><div class="process-done"></div>
                </div>
                <div class="process-img" style="background:url(../../images/icon_done.png) no-repeat;margin:23px;left:24%"></div>
            </td>
            <td>
                <div class="line-grey do-font">课程相关</div>
                <div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div>
            </td>
            <td>
                <div class="line-grey do-font">联系人信息</div>
                <div class="process-img" style="background:url(../../images/icon_do.png) no-repeat"></div>
            </td>
            <td>
                <div class="do-font">
                    完成报名
                    <div class="process-do"></div><div style="float:right;width: 50%"></div>
                </div>
                <div class="process-img" style="background:url(../../images/icon_do.png) no-repeat;margin:23px;left:24%"></div>
            </td>
        </tr>
    </table>
</div>
<form action="/Registration/update/class">
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">孩子姓名</span>
            <span class="info-enter"><input id="name" name="childrenName" class="info-input" type="text" placeholder="请输入孩子姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">英文名<span class="help-box">（选填）</span></span>
            <span class="info-enter"><input id="english" name="englishName" class="info-input" type="text" placeholder="请输入孩子英文姓名" required="required"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">身份证号</span>
            <span class="info-enter"><input id="id" name="iDNumber" class="info-input" type="number" placeholder="请输入孩子的身份证号码" required="required"></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">出生日期</span>
        <span class="info-enter">
            <input id="birth" name="birthDay" class="info-input" type="date" required="required">
        </span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td class="arrow-one"><span class="arrow-name">性别</span></td>
                    <td class="arrow-two">
                        <select id="sex" name="sex" class="info-select">
                            <option value ="男">男</option>
                            <option value ="女">女</option>
                        </select>
                    </td>
                    <td class="arrow-three" align="right">
                        <img src="../../images/icon_arrow.png" class="arrow">
                    </td>
                </tr>
            </table>
        </div>
        <div class="info-box-row">
            <span class="info-name">籍贯/民族</span>
            <span class="info-enter"><input id="province" name="nation" class="info-input" type="text" placeholder="请输入孩子的籍贯/民族" required="required"></span>
        </div>
        <div class="info-box-row">
            <table style="width:100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style="width: 20%;"><img id="preview" style="width: 100%;" src="data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%3F%3E%0A%3Csvg%20width%3D%22153%22%20height%3D%22153%22%20xmlns%3D%22http%3A//www.w3.org/2000/svg%22%3E%0A%20%3Cg%3E%0A%20%20%3Ctitle%3ENo%20image%3C/title%3E%0A%20%20%3Crect%20id%3D%22externRect%22%20height%3D%22150%22%20width%3D%22150%22%20y%3D%221.5%22%20x%3D%221.500024%22%20stroke-width%3D%223%22%20stroke%3D%22%23666666%22%20fill%3D%22%23e1e1e1%22/%3E%0A%20%20%3Ctext%20transform%3D%22matrix%286.66667%2C%200%2C%200%2C%206.66667%2C%20-960.5%2C%20-1099.33%29%22%20xml%3Aspace%3D%22preserve%22%20text-anchor%3D%22middle%22%20font-family%3D%22Fantasy%22%20font-size%3D%2214%22%20id%3D%22questionMark%22%20y%3D%22181.249569%22%20x%3D%22155.549819%22%20stroke-width%3D%220%22%20stroke%3D%22%23666666%22%20fill%3D%22%23000000%22%3E%3F%3C/text%3E%0A%20%3C/g%3E%0A%3C/svg%3E" alt="Image preview" /></td>
                    <td><span class="info-name" style="width:100%;margin-left:10px">一寸免冠照片</span></td>
                    <td align="right">
                        <a href="javascript:;" class="file">上传照片<img src="../../images/icon_arrow.png" class="arrow">
                            <input id="image" name="uploadImg" type="file" accept="image/*" onchange="loadImageFile();" required="required"/>
                        </a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">就读学校</span>
            <span class="info-enter"><input id="school" name="currentSchool" class="info-input" type="text" placeholder="请输入孩子的就读学校" required="required"></span>
        </div>
    </div>
    <div class="bottom-box"></div>
    <div class="button-box">
        <div class="button-div">
            <input class="step-button" type="submit" value="下一步">
        </div>
    </div>
</form>
</body>
</html>