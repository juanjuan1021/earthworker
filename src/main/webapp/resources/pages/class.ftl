<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>地球小行者</title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/info.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/buy.css">
    <script>
        var interest = '${(registration.interest)!""}';
        $(document).ready(function(){
            if(interest != ""){
                var interests = new Array();
                interests = interest.split(",");
                for (i=0;i<interests.length ;i++ )
                {
                    $(".interest").each(function(){
                        if($(this).text() == interests[i]){
                            $(this).attr("class","interest-selected");
                        }
                    });
                }
            }
        });
    </script>
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
            <span class="info-name">兴趣爱好<span class="help-box">（多选）</span></span>
            <span class="info-enter"></span>
        </div>
        <div class="info-box-row">
            <table class="interest-box" style="width:100%">
                <tr>
                    <td><div id="interest1" class="interest" onclick="selectInterest(this)">乐器类</div></td>
                    <td><div id="interest2" class="interest" onclick="selectInterest(this)">戏剧课</div></td>
                    <td><div id="interest3" class="interest" onclick="selectInterest(this)">唱歌</div></td>
                    <td><div id="interest4" class="interest" onclick="selectInterest(this)">跳舞</div></td>
                </tr>
                <tr>
                    <td><div id="interest5" class="interest" onclick="selectInterest(this)">滑水</div></td>
                    <td><div id="interest6" class="interest" onclick="selectInterest(this)">帆船</div></td>
                    <td><div id="interest7" class="interest" onclick="selectInterest(this)">马术</div></td>
                    <td><div id="interest8" class="interest" onclick="selectInterest(this)">篮球</div></td>
                </tr>
                <tr>
                    <td><div id="interest9" class="interest" onclick="selectInterest(this)">足球</div></td>
                    <td><div id="interest10" class="interest" onclick="selectInterest(this)">羽毛球</div></td>
                    <td><div id="interest11" class="interest" onclick="selectInterest(this)">桥牌</div></td>
                    <td><div id="interest12" class="interest" onclick="selectInterest(this)">飞盘</div></td>
                </tr>
            </table>
            <input id="interest" name="interest" type="hidden">
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">参加目的</span>
            <span class="info-enter"><input id="purpose" name="purpose" class="info-input" type="text" placeholder="请输入孩子参加活动的目的" value='${(registration.purpose)!""}'></span>
        </div>
    </div>
    <div class="info-box">
        <div class="info-box-row">
            <span class="info-name">身高<span class="help-box">（厘米）</span></span>
            <span class="info-enter"><input id="height" name="height" class="info-input" type="number" placeholder="请输入孩子身高" value='${(registration.height)!""}'></span>
        </div>
        <div class="info-box-row">
            <span class="info-name">体重<span class="help-box">（千克）</span></span>
            <span class="info-enter"><input id="weight" name="weight" class="info-input" type="number" placeholder="请输入孩子体重" value='${(registration.weight)!""}'></span>
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