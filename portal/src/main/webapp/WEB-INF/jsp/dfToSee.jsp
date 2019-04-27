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
    <title>相见时难别亦难</title>
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

    <h1><span style="font-family: 华文楷体;font-size: larger;color: lawngreen">相思未央 青丝荡荡 问世间情为何物？不过生死相依</span></h1>
    <br>
    <br>
    <br>
    <p align="center"><img src="http://media.zhongguoshici.com/topic_imgs/c8/ba7122a6da943d619aa634b9efdfccc8"
                           img_width="640" img_height="360" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"><br></p>
    <p>淡嗅墨莲芳香 绾袖提笔</p>
    <p>笔锋落处</p>
    <p>尽是</p>
    <p>莲花点点 墨色缠缠</p>
    <p>与</p>
    <p>愁思盏盏</p>
    <h1>君不见......<br></h1>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/c4/7ef3d7855823112fcab940759200c5c4" img_width="640"
            img_height="406" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"></p>
    <p> 梦回前朝擦肩过，风雨阑珊落。青丝泪洒满楼阁，又逢三年秋水荡清荷。</p>
    <p> 仍忆那世青杉淡，妙笔丹青乱。水墨鸳鸯愁波转，烟沙渺渺琵琶声欲断。</p>
    <p> ---《虞美人 伊人醉》</p>
    <h1>凄清月夜琵琶断......<br></h1>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/3c/9536d5e14af017c5021317dd1d46b43c" img_width="580"
            img_height="355" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"></p>
    <p> 月满西楼人独秀，醉饮三秋。江水悠悠，清溪泛舟几时休？</p>
    <p> 青丝渐乱朱颜改，落红无奈。冬去花开，却道期年人不在。</p>
    <p> ——《采桑子 醉三秋》</p>
    <h1>人不寐......</h1>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/a6/2197c9606aba26633ddee52fffa509a6" img_width="640"
            img_height="360" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"></p>
    <p> 提笔轻留相思愁，一晌悲秋。一晌悲秋，满城都秀几时休？</p>
    <p> 朱颜已老青丝寄，韶华空留。韶华空留，难续断篇半世忧。</p>
    <p> ——《采桑子》</p>
    <h1>贪饮青萝春秋醉......<br></h1>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/70/8b812dafa215fa5d8f10af2f393d0070" img_width="384"
            img_height="240" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"></p>
    <p> 问世间情为何物？生相随，死相依。愿此心不改，此情永不渝。相知相守难相见，相伴相望不相离。</p>
    <p>——《老爱情》</p>
    <p><img src="http://media.zhongguoshici.com/topic_imgs/c5/a16859fdc6c2e7d2f200c3a4bd21d7c5" img_width="640"
            img_height="303" alt="古风原创诗词｜一盏相思人未老 半曲彷徨离人愁" inline="0"></p>
    <p>世界上最美的图画</p>
    <p>是汉字</p>
    <p>最美的语言</p>
    <p>是诗词</p>
    <p>最美的景色</p>
    <p>便是吟着诗词的你</p>
    <h1>一盏相思人未老 半曲彷徨离人愁</h1>
    <p>静静晚风，宽宽寒宫，在字里行间，发现一片心悦方田</p>
    <p>曲终人未散，人走思未央</p>
    <p>客官，茶凉了，夜深了，我们下回再见</p>
</div>


</body>
</html>
