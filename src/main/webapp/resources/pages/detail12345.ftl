<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/detail.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/detail.css">
</head>
<body>
<div style="position:relative;">
    <div>
        <img class="detail-img" src="/images/detail-title.jpg">
    </div>
    <div class="title">2015行远帆船夏日营</div>
    <div class="subtitle">
    <span>
        <img class="icon" src="/images/icon_time.png">
    </span>
        <span>8月24日-8月28日</span>
    </div>
    <div class="subtitle">
    <span>
        <img class="icon" src="/images/icon_age.png">
    </span>
        <span>6-16周岁</span>
    </div>
    <div class="activity">
        ------  •  活动特色  •  ------
    </div>
    <div class="intro">
        5天尽享OP帆船理论课程、水上训练、数字化创新学习！国家专业运动场地和教练，专人负责安全事宜，确保营员在安全的环境中学习，无需游泳基础，100%安全！从认识帆船、组装帆船到下水比赛，让孩子真正掌握驾驭OP级帆船，飘扬在茫茫碧海中体验一个水手的勇敢和气概。
    </div>
    <div>
        <img class="detail-img" src="/images/day-start.jpg">
    </div>
    <div class="activity-box">
        <div style="border:2px solid orange;width:40%;background-color:#FFFFFF;">
            <div style="margin:10px;border:2px solid orange;padding:10px;color:orange;font-size:40px;text-align:center;font-weight:bold;">活动流程</div>
        </div>
    </div>

    <div class="box">
        <div class="day">第一天</div>
        <div class="process">
            <ul>
                <li>夏令营入营仪式</li>
                <li>大帆船乘坐体验</li>
                <li>帆船急救训练，水上互动游戏，香蕉船乘坐</li>
                <li>学习OP安装，打水手绳结，风向理论学习</li>
            </ul>
        </div>
        <div>
            <img class="detail-img" src="/images/day-1.jpg">
        </div>
    </div>

    <div class="box">
        <div class="day">第二天</div>
        <div class="process">
            <ul>
                <li>帆船理论课程，OP帆船水上航行</li>
                <li>OP帆船水上练习课程，水上沙发</li>
                <li>上岸休息及讲解分析技术</li>
                <li>营员自己动手制作帆船明信片</li>
            </ul>
        </div>
        <div>
            <img class="detail-img" src="/images/day-2.jpg">
        </div>
    </div>

    <div class="box">
        <div class="day">第三天</div>
        <div class="process">
            <ul>
                <li>OP帆船操作练习（独立操作）</li>
                <li>联欢晚会，营员表演自己安排的节目</li>
            </ul>
        </div>
        <div>
            <img class="detail-img" src="/images/day-3.jpg">
        </div>
    </div>

    <div class="link"><a href="process.html">查看活动流程详情></a></div>
    <div class="activity">
        ------  •  温馨提示  •  ------
    </div>
    <div class="process">
        <ul>
            <li>费用说明：4380/人/期；</li>
            <li>集合信息：a、上海市威海路48号（黄陂北路口）民生银行大门口；b、南方商城，沪闵路过万源路路口；</li>
            <li>报名方式：添加微信号“A409215”索要报名表；</li>
            <li>公司账户：上海金堂沙滩会展服务有限公司；</li>
            <li>账号：038598 000400 34943；</li>
            <li>开户行：中国农业银行上海市金山区金山支行；</li>
            <li>营址：奉贤碧海金沙，海涵路6号骑浪体育。</li>
        </ul>
    </div>
</div>
<div class="float-button">
    <div class="line"></div>
    <table style="width: 100%">
        <tr>
            <td class="consult">
                <div class="consult-img"><img src="/images/icon_phone.png"></div>
                <div class="consult-title">咨询</div>
            </td>
            <td class="consult-button" colspan="3">
                <input class="apply-button" id="apply" type="button" value="报名课程">
            </td>
        </tr>
    </table>
</div>
<div class="mask"></div>
<div class="float-box">
    <div class="line"></div>
    <div class="title-box">
        <table>
            <tr>
                <td><img id="enter-img" src="/images/detail-title.jpg"></td>
                <td id="title-td" colspan="2" class="title-des">
                    <div class="title-name">2016行远帆船夏令营</div>
                    <div class="title-price">￥2800</div>
                    <div class="title-age">适合年龄：6-16周岁</div>
                </td>
            </tr>
        </table>
    </div>
    <div class="line"></div>
    <div class="course-box">
        <div class="course-title">课程时间</div>
        <div class="course-time">
            <table>
                <tr>
                    <td align="center" valign="middle"><div class="course-session" id="time1" onclick="selectTime(this)">2016/8/24-2016/8/28</div></td>
                    <td align="center" valign="middle"><div class="course-session" id="time2" onclick="selectTime(this)">2016/8/24-2016/8/28</div></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="course-box">
        <div class="course-title">课程所在城市</div>
        <div class="course-time">
            <table>
                <tr>
                    <td><div id="city1" class="course-city" onclick="selectCity(this)">上海</div></td>
                    <td><div id="city2" class="course-city" onclick="selectCity(this)">北京</div></td>
                    <td><!--<div id="city3" class="course-city" onclick="selectCity(this)">广州</div>--></td>
                    <td><!--<div id="city4" class="course-city" onclick="selectCity(this)">杭州</div>--></td>
                    <td><!--<div id="city5" class="course-city" onclick="selectCity(this)">其他</div>--></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="line"></div>
    <div class="course-button">
        <a href="/Registration/newRegistration/buy?dealId=12345"><input class="apply-button" type="button" value="购买报名"></a>
    </div>
</div>
</body>
</html>