<%--
Created by IntelliJ IDEA.
User: landmyp
Date: 19-1-16
Time: 上午11:51
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link rel="icon" href="static/img/headlogo.jpg" type="image/x-icon"/>
    <title>一页书诗词网</title>
    <link rel="stylesheet" href="static/css/v3-framework.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-common.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-site.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" rev="stylesheet" href='static/css/new2015.min.css' type="text/css" media="all"/>
    <style type="text/css">
        .style2 {
            width: 115px;
            height: 34px;
            margin: -12px auto;
            /* margin-bottom:20px;*/
            border: 1px solid #9BDF70;
            background-color: #F0FBEB
        }
    </style>


    <%--  点击出现自由明主等字眼--%>
    <script type="text/javascript">
        $(document).ready(function () {
            var a_index = 0;
            $("body").click(function (e) {
                var a = new Array("富强", "民主", "文明", "和谐", "自由", "平等", "公正", "法治", "爱国", "敬业", "诚信", "友善", "祥哥最帅", "祥哥英俊潇洒", "祥哥男神");
                var $i = $("<span/>").text(a[a_index]);
                a_index = (a_index + 1) % a.length;
                var x = e.pageX, y = e.pageY;
                $i.css({
                    "z-index": 99999,
                    "top": y - 20,
                    "left": x,
                    "position": "absolute",
                    "font-weight": "bold",
                    "color": "#ff6651"
                });
                $("body").append($i);
                $i.animate({"top": y - 180, "opacity": 0}, 1500, function () {
                    $i.remove();
                });
            });
        });
    </script>
</head>


<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default  navbar-fixed-top"
                 role="navigation">  <%-- navbar-inverse--%> <%--控制反转--%>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span></button>
                    <c:if test="${user.uname==null}">
                        <img src="static/img/logo.gif" width="50px" height="50px"/>
                    </c:if>
                    <c:if test="${user.uname!=null}">
                        <img src="static/img/nologin.gif" width="90px" height="50px"/>
                    </c:if>


                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index">首页</a>
                        </li>
                        <li>
                            <img src="static/img/middle.gif" height="55px" width="120px"/>
                        </li>

                    </ul>

                    <%-- 主要用来卡位置的--%>
                    <%--     <div class="pull-left m-l-sm">
                    <img src="static/img/temp.png" height="30px"/>

                </div>--%>

                    <div class="pull-left m-l-sm">
                        <img src="static/img/onePage.png" height="55px"/>

                    </div>


                    <div class="pull-left hidden-xs hidden-sm m-md p-l-sm">
                        <img src="static/picture/slogen.png" width="115px">

                    </div>


                    <c:if test="${user.uname==null}">


                        <ul class="nav navbar-nav navbar-right">
                            <img src="static/img/nologin.gif" width="60px" height="50px"/>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <span style="font-family: 华文楷体;font-size: larger;color: blue">诗词网欢迎你！</span>
                                    <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="snowLogin">去登陆</a>
                                    </li>

                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a>未登录状态....</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>


                        <%-- <div class="pull-right hidden-xs hidden-sm m-md p-l-sm" >--%>

                        <div class="pull-right hidden-xs hidden-sm m-md p-l-sm">


                            <div class="style2">
                                <a href="snowLogin">
                                    <button type="button" class="btn btn-default ">登录</button>
                                </a>
                                <a href="snowLogin">
                                    <button type="button" class="btn btn-default ">注册</button>
                                </a>
                            </div>


                        </div>
                    </c:if>

                    <c:if test="${user.uname!=null}">


                        <ul class="nav navbar-nav navbar-right">
                            <img src="static/img/logo.gif" width="50px" height="50px"/>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <span style="font-family: 华文楷体;color: blue;font-size: larger">欢迎你:${user.uname}</span>
                                    <strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">个人中心</a>
                                    </li>

                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="loginout">退出登录</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>


                        <div class="pull-right hidden-xs hidden-sm m-md p-l-sm">


                            <div class="style2">
                                <a>
                                    <button type="button" class="btn btn-default" onclick="aiguo()">自强</button>
                                </a>
                                <a>
                                    <button type="button" class="btn btn-default " onclick="aiguo()">爱国</button>
                                </a>
                            </div>

                        </div>


                    </c:if>


                    <form class="navbar-form navbar-right" role="search" action="searchPoetry" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" name="poetryAuthor" placeholder="搜索诗词。。。。"/>
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>

                </div>

            </nav>

        </div>
    </div>

</div>

<br>
<br>
<br>
<br>

<div align="center">
    <p><img src="http://media.zhongguoshici.com/topic_imgs/a4/e44904a7e47f1ed11ff4b3351aac17a4" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>蝶恋花</strong></p>
    <p>苏轼</p>
    <p>春事阑珊芳草歇。客里风光，又过清明节。</p>
    <p>小院黄昏人忆别。落红处处闻啼鴂。</p>
    <p>咫尺江山分楚越。目断魂销，应是音尘绝。</p>
    <p>梦破五更心欲折。角声吹落梅花月。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/bc/4e96d2e0c5244eea72b44fa8ec0592bc" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>万里春</strong></p>
    <p>周邦彦</p>
    <p>千红万翠。簇定清明天气。</p>
    <p>为怜他、种种清香，好难为不醉。</p>
    <p>我爱深如你。我心在、个人心里。</p>
    <p>便相看、老却春风，莫无些欢意。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/42/e725b99f73c95afd00844a4860277142" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>蝶恋花</strong></p>
    <p>晏几道</p>
    <p>欲减罗衣寒未去，不卷珠帘，人在深深处。</p>
    <p>残杏枝头花几许。啼红正恨清明雨。</p>
    <p>尽日沈香烟一缕。宿酒醒迟，恼破春情绪。</p>
    <p>远信还因归燕误。小屏风上西江路。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/55/7073c47f022237ac2adf5d20fcdbe955" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>满江红</strong></p>
    <p>辛弃疾</p>
    <p>家住江南，又过了、清明寒食。</p>
    <p>花径里、一番风雨，一番狼藉。</p>
    <p>流水暗随红粉去，园林渐觉清阴密。</p>
    <p>算年年、落尽刺桐花，寒无力。</p>
    <p>庭院静，空相忆。无说处，闲愁极。</p>
    <p>怕流莺乳燕，得知消息。</p>
    <p>尺素如今何处也，彩云依旧无踪迹。</p>
    <p>谩教人、羞去上层楼，平芜碧。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/a5/76e4b90bc94f52a6efade29d3fcfcaa5" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>蝶恋花</strong></p>
    <p>欧阳修</p>
    <p>欲过清明烟雨细。小槛临窗，点点残花坠。</p>
    <p>梁燕语多惊晓睡，银屏一半堆香被。</p>
    <p>新风风光如旧风，所恨征轮，渐渐迢递。</p>
    <p>纵有远情难写寄，保妨解有相思泪。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/b5/d6684f9df97fd2d2ece539a7ceba00b5" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>破阵子</strong></p>
    <p>晏殊</p>
    <p>燕子来时新社，梨花落后清明。</p>
    <p>池上碧苔三四点，叶底黄鹂一两声。</p>
    <p>日长飞絮轻，巧笑东邻女伴。</p>
    <p>采桑径里逢迎，疑怪昨宵春梦好。</p>
    <p>元是今朝斗草赢，笑从双脸生。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/e6/2c49af896fc60adbcd476d04cfc6ede6" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>青门引</strong></p>
    <p>张先</p>
    <p>乍暖还轻冷，风雨晚来方定。</p>
    <p>庭轩寂寞近清明，残花中酒，又是去年病。</p>
    <p>楼头画角风吹醒，入夜重门静。</p>
    <p>那堪更被明月，隔墙送过秋千影。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/13/2207bdb3341b85690455961db2c6a913" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>点绛唇·春愁</strong></p>
    <p>赵鼎</p>
    <p>香冷金炉，梦回鸳帐馀香嫩。</p>
    <p>更无人问，一枕江南恨。</p>
    <p>消瘦休文，顿觉春衫褪。</p>
    <p>清明近，杏花吹尽，薄暮东风紧。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/eb/413c8e7dbcb7784e98f3ea9dc8c729eb" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>湘春夜月</strong></p>
    <p>黄孝迈</p>
    <p>近清明，翠禽枝上消魂。可惜一片清歌，都付与黄昏。</p>
    <p>欲共柳花低诉，怕柳花轻薄，不解伤春。</p>
    <p>念楚乡旅宿，柔情别绪，谁与温存。</p>
    <p>空樽夜泣，青山不语，残月当门。</p>
    <p>翠玉楼前，惟是有、一波湘水，摇荡湘云。</p>
    <p>天长梦短，问甚时、重见桃根。</p>
    <p>这次第，算人间没个并刀、剪断心上愁痕。</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/0f/77a3ed8dd77c19a012a35109dac38b0f" img_width="800"
            img_height="400" alt="宋词里的清明" inline="0"></p>
    <p><strong>望海潮·清明咏怀</strong></p>
    <p>陈德武</p>
    <p>三分春色，十分官事，令人孤负芳菲。</p>
    <p>歌燕簧莺，语花舞柳，园林好处谁知。</p>
    <p>还忆旧游时。对海棠驻马，红药题诗。</p>
    <p>一别东君，回顾又是隔年期。</p>

</div>


</body>







