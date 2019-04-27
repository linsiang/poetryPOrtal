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
    <title>军人三叹</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="static/css/v3-framework.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-common.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-site.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <%--    <script src="static/js/hammer.min.js"></script>--%>


    <%--    <link rel="stylesheet" type="text/css" href="static/css/responsiveslides.css"/>--%>

    <%-- <script src="static/js/responsiveslides.js"></script>--%>

    <link rel="stylesheet" rev="stylesheet" href='static/css/new2015.min.css'
          type="text/css" media="all"/>

    <link rel="stylesheet" type="text/css" href='static/css/hotel-com.css'
          media="all"/>
    <link rel="stylesheet" type="text/css" href='static/css/new_index2017.css'/>
    <link rel="stylesheet" type="text/css" href="static/css/train.css"/>
    <link rel="stylesheet" type="text/css" href="static/css/flight.css"/>
    <link rel="stylesheet" type="text/css" href="static/css/common_index.css"/>


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
<br>


<div align="center">
    <br>
    <br>

    <h1> <span style="font-family: 华文楷体;font-size: larger;color: lawngreen">冲锋我在前，陷阵首当先。

堂堂男儿身，一勇敌万难。</span></h1>
    <br>
    <br>
    <br>

    <h1><span style="font-family: 华文楷体;font-size: larger;color: lawngreen">   </span></h1>


    <p align="center"><img src="static/img/juren1.jpeg" img_width="640" img_height="360" inline="0"><br></p>
    <p>红军不怕远征难，万水千山只等闲。</p>
    <p>五岭逶迤腾细浪，乌蒙磅礴走泥丸。</p>
    <p>金沙水拍云崖暖，大渡桥横铁索寒。</p>
    <p>更喜岷山千里雪，三军过后尽开颜。</p>
    <h1><br> <span style="font-family: 华文楷体;font-size: larger;color: lawngreen"> 国力强盛</span></h1>
    <p><img src="static/img/junren2.jpeg" img_width="640" img_height="406" inline="0"></p>
    <p> 坐镇九州，管他东西南北；</p>
    <p> 声震云霄，驱散风雷雨雪；护家卫国就是好样的！</p>
    <p> ---《中国军人》</p>
    <h1><br></h1>
    <h1><span style="font-family: 华文楷体;font-size: larger;color: lawngreen"> 勇者不屈......  </span></h1>
    <p><img src="static/img/junren3.jpeg" img_width="580" img_height="355" inline="0"></p>
    <p> 怒发冲冠，凭栏处、潇潇雨歇。
    <p/>
    <p>

        抬望眼，仰天长啸，壮怀激烈。
    <p/>
    <p>

        三十功名尘与土，八千里路云和月。
    <p/>
    <p>

        莫等闲，白了少年头，空悲切！</p>
    <p> 靖康耻，犹未雪。臣子恨，何时灭！
    <p/>
    <p>

        驾长车，踏破贺兰山缺。
    <p/>
    <p>

        壮志饥餐胡虏肉，笑谈渴饮匈奴血。
    <p/>
    <p>

        待从头、收拾旧山河，朝天阙。</p>
    <h1></h1>
    <h1><span style="font-family: 华文楷体;font-size: larger;color: lawngreen">  保家卫国守国门，一生从军终不悔！一身军装报国家，铁血铮铮好男儿！ </span>
    </h1>
    <p><img src="static/img/junren4.jpeg" img_width="640" img_height="360" inline="0"></p>
    <p>回乐峰前沙似雪，
    <p/>
    <p>

        受降城外月如霜。
    <p/>
    <p>

        不知何处吹芦管，
    <p/>
    <p>

        一夜征人尽望乡。</p>
    <h1><br></h1>
    <h1><span style="font-family: 华文楷体;font-size: larger;color: lawngreen">  边疆英雄们...... </span></h1>
    <p><img src="static/img/junren5.jpeg" img_width="384" img_height="240" inline="0"></p>
    <p> 八月桂花香满天，五星红旗迎风展。

        军歌嘹亮震天响，盛赞军人意志刚。</p>
    <p>

        风霜雨雪搏激流，保家卫国血铸就。</p>
    <p></p>
    <p><img src="static/img/junren.png" img_width="640" img_height="303" inline="0"></p>
    <p>世界上最美的图画</p>
    <p>是汉字</p>
    <p>最美的语言</p>
    <p>是诗词</p>
    <p>最美的景色</p>
    <p>便是向人民敬礼的你！</p>
    <h1>一盏相思人未老 半曲彷徨离人愁</h1>
    <p>静静晚风，宽宽寒宫，在字里行间，发现一片心悦方田</p>
    <p>曲终人未散，人走思未央</p>
    <p>客官，茶凉了，夜深了，我们下回再见</p>
</div>


</body>
</html>
