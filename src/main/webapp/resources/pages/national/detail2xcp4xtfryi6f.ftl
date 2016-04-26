<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=0.5, user-scalable=no" />
    <title>地球小行者</title>
    <script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="/js/detail.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="/css/detail.css">
</head>
<body>
<div class="detail-box">
    <div>
        <img class="detail-img" src="/images/2xcp4xtfryi6f.jpg">
    </div>
    <div class="title">行远之牛津锐思暑期学校</div>
    <div class="title-money">营费待定<span class="title-tag">全程外教</span></div>
    <div class="title-line"></div>
    <div class="subtitle-box">
        <table style="width:100%">
            <tr>
                <td class="subtitle-time">时间<span class="subtitle-desc">待定</span></td>
                <td class="subtitle-age">适合年龄<span class="subtitle-desc">待定</span></td>
            </tr>
        </table>
    </div>
    <div class="line"></div>
    <div class="activity">
        <span><img src="/images/tag_left.png"></span><span class="activity-desc">活动特色</span><span><img src="/images/tag_right.png"></span>
    </div>
    <div class="intro">
        牛津锐思乃以经济、商业、价值投资、法律和国际事务专业方向所开设的专项暑期学校。独一无二的课程，探秘大学生活的机会。极富经验与热情的导师。
    </div>
    <div>
        <img class="detail-img" src="/images/detail/2xcp4xtfryi6f-start.png">
    </div>
    <div class="activity-box">
        <div class="box-one">
            <div class="box-two">活动流程</div>
        </div>
    </div>
    <div class="box">
        <div>
            <img class="detail-img" src="/images/detail/2xcp4xtfryi6f-1.png">
        </div>
    </div>

    <div class="bottom-box">
        <div class="activity">
            <span><img src="/images/tag_left.png"></span><span class="activity-desc">温馨提示</span><span><img src="/images/tag_right.png"></span>
        </div>
        <div class="process">
            <ul>
                <li>费用说明：待定</li>
                <li>集合信息：（待定）</li>
                <li>报名方式：点击“报名课程”按钮即可完成在线报名；</li>
                <li>公司账户：上海金堂沙滩会展服务有限公司；</li>
                <li>账号：03858900040034943；</li>
                <li>开户行：中国农业银行上海市金山区金山支行；</li>
            </ul>
        </div>
    </div>
</div>
<div class="float-button">
    <table style="width: 100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="consult">
                <a href="tel:021-63530329">
                    <div class="consult-img"><img src="/images/icon_phone.png"></div>
                    <div class="consult-title">咨询</div>
                </a>
            </td>
            <td class="consult-button">
                <input class="apply-button" id="apply" type="button" value="我要报名">
            </td>
        </tr>
    </table>
</div>
<div class="mask"></div>
<form action="/Registration/newRegistration/buy?dealId=2xcp4xtfryi6f" method="post" role="form">
    <input id="flag" name="flag" type="hidden" value="national">
    <div class="float-box">
        <div class="title-box">
            <table>
                <tr>
                    <td><img id="enter-img" src="/images/2xcp4xtfryi6f.jpg"></td>
                    <td id="title-td" class="title-des">
                        <div class="title-name">行远之牛津锐思暑期学校</div>
                        <div class="title-price">营费待定</div>
                        <div class="title-age">适合年龄：待定</div>
                    </td>
                </tr>
            </table>
        </div>
        <div class="line"></div>
        <div class="course-box">
            <div class="course-title">课程时间<span style="color:red">*</span></div>
            <div class="course-time">
                <table>
                    <tr>
                        <td align="center" valign="middle"><div class="disable-session">待定</div></td>
                        <td align="center" valign="middle"></td>
                    </tr>
                    <input id="dealSession" name="dealSession" type="hidden">
                </table>
            </div>
        </div>
        <div class="course-box">
            <div class="course-title">课程所在城市<span style="color:red">*</span></div>
            <div class="course-time">
                <table>
                    <tr>
                        <td><div id="city1" class="disable-city">待定</div></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <input id="dealCity" name="dealCity" type="hidden">
                </table>
            </div>
        </div>
        <div class="line"></div>
        <div class="course-button">
            <input id="confirm-button"  class="confirm-button" type="button" value="确认报名">
        </div>
    </div>
</form>
</body>
</html>