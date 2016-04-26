<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>地球小行者</title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/buy.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/finish.css">
    <script>
        var titleUrl = '${(finalRegistration.dealId)!""}';
        $(document).ready(function(){
            if(titleUrl != ""){
                var url = "/images/${finalRegistration.dealId}.jpg"
                $("#enter-img").attr("src",url);
            }
        });
    </script>
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
                <td><img id="enter-img" src=""></td>
                <td id="title-td" class="title-des">
                    <div class="title-name">${(finalRegistration.dealName)!""}</div>
                    <div class="title-age">时间：${(finalRegistration.dealSession)!""}</div>
                    <div class="title-price">￥${(finalRegistration.userAmount)!""}</div>
                </td>
            </tr>
        </table>
    </div>
    <div class="line"></div>
    <div class="children-info">
        <table style="width:100%">
            <tr>
                <td class="photo-td"><img class="photo-img" src="${(finalRegistration.img)!""}"></td>
                <td class="children-td">
                    <div class="children-name">${(finalRegistration.childrenName)!""}（${(finalRegistration.englishName)!""}）</div>
                    <div class="children-desc">${(finalRegistration.sex)!""} ${(finalRegistration.birthDay)!""}</div>
                    <div class="children-desc">${(finalRegistration.currentSchool)!""}</div>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>