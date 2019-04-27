<%--
  Created by IntelliJ IDEA.
  User: landmyp
  Date: 19-3-18
  Time: 下午2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link type="image/x-icon" rel="shortcut icon" href="http://www.shicifuns.com/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="http://img1.zhongguoshici.com/static/css/style_base.css?v=0.10"/>
    <link rel="stylesheet" type="text/css" href="http://img1.zhongguoshici.com/static/css/style_index.css?v=0.10"/>
    <title>${search.searchName}诗集</title>
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css"/>
    <script src="http://zhongguoshici.com/ajax/ip-loc/js-format" type="text/javascript"></script>
    <script src="http://img1.zhongguoshici.com/static/js/header.js?v=0.10"></script>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="icon" href="static/img/headlogo.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="static/css/v3-framework.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-common.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/v3-site.css" type="text/css"/>
    <link rel="stylesheet" rev="stylesheet" href='static/css/new2015.min.css' type="text/css" media="all"/>

    <style>


        .mypagination {
            display: inline-block;
            padding-left: 0;
            margin: 20px 0;
            border-radius: 4px;
        }

        .mypagination > li {
            display: inline;
        }

        .mypagination > li > a,
        .mypagination > li > span {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }

        .mypagination > li:first-child > a,
        .mypagination > li:first-child > span {
            margin-left: 0;
            border-top-left-radius: 4px;
            border-bottom-left-radius: 4px;
        }

        .mypagination > li:last-child > a,
        .mypagination > li:last-child > span {
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }

        .mypagination > li > a:hover,
        .mypagination > li > span:hover,
        .mypagination > li > a:focus,
        .mypagination > li > span:focus {
            z-index: 3;
            color: #23527c;
            background-color: #eee;
            border-color: #ddd;
        }

        .mypagination > .active > a,
        .mypagination > .active > span,
        .mypagination > .active > a:hover,
        .mypagination > .active > span:hover,
        .mypagination > .active > a:focus,
        .mypagination > .active > span:focus {
            z-index: 2;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }

        .mypagination > .disabled > span,
        .mypagination > .disabled > span:hover,
        .mypagination > .disabled > span:focus,
        .mypagination > .disabled > a,
        .mypagination > .disabled > a:hover,
        .mypagination > .disabled > a:focus {
            color: #777;
            cursor: not-allowed;
            background-color: #fff;
            border-color: #ddd;
        }

        .mypagination-lg > li > a,
        .mypagination-lg > li > span {
            padding: 10px 16px;
            font-size: 18px;
            line-height: 1.3333333;
        }

        .mypagination-lg > li:first-child > a,
        .mypagination-lg > li:first-child > span {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
        }

        .mypagination-lg > li:last-child > a,
        .mypagination-lg > li:last-child > span {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
        }

        .mypagination-sm > li > a,
        .mypagination-sm > li > span {
            padding: 5px 10px;
            font-size: 12px;
            line-height: 1.5;
        }

        .mypagination-sm > li:first-child > a,
        .mypagination-sm > li:first-child > span {
            border-top-left-radius: 3px;
            border-bottom-left-radius: 3px;
        }

        .mypagination-sm > li:last-child > a,
        .mypagination-sm > li:last-child > span {
            border-top-right-radius: 3px;
            border-bottom-right-radius: 3px;
        }
    </style>


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
                            <div class="pull-left m-l-sm">
                                <img src="static/img/middle.gif" height="55px" width="120px"/>

                            </div>
                        </li>

                    </ul>

                    <%-- 主要用来卡位置的--%>
                    <%--     <div class="pull-left m-l-sm">
                         <img src="static/img/temp.png" height="30px"/>

                     </div>--%>

                    <div class="pull-left m-l-sm">
                        <img src="static/img/onePage.png" width="280px" height="55px"/>

                    </div>


                    <div class="pull-left hidden-xs hidden-sm m-md p-l-sm">
                        <img src="static/picture/slogen.png" width="110px">

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

<div class="css_content">
    <div class="css_body">


        <div class="css_body_left">

            <div class="clear"></div>

            <ul class="writing">

                <c:forEach items="${search.list}" var="list">

                    <a href="#" target="_blank">
                        <li>
                            <div class="poem_title">
                                <span class="tag">诗词赏析</span>
                                <span>${list.poetry_title}   ${list.poetry_author}  </span>
                                <a target="_blank" href="/shici/details/part/54635?type=audio">
                                    <!-- <img src="http://img1.zhongguoshici.com/static/images/ic_voice.png" width="16px" height="14px" />-->
                                </a>
                            </div>
                            <div class="poem_content">${list.poetry_body}</div>
                        </li>
                    </a>

                </c:forEach>

            </ul>


        </div>

    </div>
    <div class="css_body_right">
        <div style="clear:both"></div>
        <div class="hot_poem" style="margin-top: 0px;">
            <div class="common_header"><span>热门诗人</span>
                <div class="bottom_line">
                    <div class="speed"></div>
                </div>
            </div>
            <ul>

                <a target="_blank" href="details?poetryAuthor=李清照">
                    <li>
                        <img class="poem_img" src="static/img/lqz.png" width="113px" height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">李清照</span>
                            <span class="dynasty">朝代：宋朝</span>
                            <span class="desc">李清照（1084年3月13日—约1155年），号易安居士，汉族，齐州济南（今山东省济南市章丘区）人。宋代女词人，婉约词派代表，有“千古第一才女”之称。...</span>
                        </div>
                    </li>
                </a>

                <a target="_blank" href="details?poetryAuthor=李白">
                    <li>
                        <img class="poem_img"
                             src="http://media.zhongguoshici.com/logos/537342ee310023e4ba7e92fa90ccbae9" width="113px"
                             height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">李白</span>
                            <span class="dynasty">朝代：唐代</span>
                            <span class="desc">李白（701年－762年），字太白，号青莲居士，唐朝浪漫主义诗人，被后人誉为“诗仙”。...</span>
                        </div>
                    </li>
                </a>
                <a target="_blank" href="details?poetryAuthor=苏轼">
                    <li>
                        <img class="poem_img"
                             src="http://media.zhongguoshici.com/logos/3fe8fe6a6bcd534f8664a2db4ad16ea9" width="113px"
                             height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">苏轼</span>
                            <span class="dynasty">朝代：宋代</span>
                            <span class="desc">苏轼（1037－1101），北宋文学家、书画家、美食家。字子瞻，号东坡居士。汉族，四川人...</span>
                        </div>
                    </li>
                </a>
                <a target="_blank" href="details?poetryAuthor=白居易">
                    <li>
                        <img class="poem_img"
                             src="http://media.zhongguoshici.com/logos/0bbd0c3718a87a86e141ca7d1e329ad5" width="113px"
                             height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">白居易</span>
                            <span class="dynasty">朝代：唐代</span>
                            <span class="desc">白居易（772～846），字乐天，晚年又号称香山居士，河南郑州新郑人，是我国唐代伟大的...</span>
                        </div>
                    </li>
                </a>
                <a target="_blank" href="details?poetryAuthor=王维">
                    <li>
                        <img class="poem_img"
                             src="http://media.zhongguoshici.com/logos/bb61cb4c362785264b872cc292cba782" width="113px"
                             height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">王维</span>
                            <span class="dynasty">朝代：唐代</span>
                            <span class="desc">王维（701年－761年，一说699年—761年），字摩诘，汉族，河东蒲州（今山西运城）人，...</span>
                        </div>
                    </li>
                </a>
                <a target="_blank" href="details?poetryAuthor=陆游">
                    <li>
                        <img class="poem_img"
                             src="http://media.zhongguoshici.com/logos/c57eceea655eb9974c0f9fc6ee9b1f5c" width="113px"
                             height="138px" title="诗人名"/>
                        <div class="poem_info">
                            <span class="writer">陆游</span>
                            <span class="dynasty">朝代：宋代</span>
                            <span class="desc">陆游（1125—1210），字务观，号放翁。汉族，越州山阴（今浙江绍兴）人，南宋著名诗人...</span>
                        </div>
                    </li>
                </a>
            </ul>
        </div>

    </div>
</div>
</div>
<div style="height:109px;width:100%;"></div>


<div align="center" class="container">

    <ul class="mypagination">


        <li><a href="searchPoetry?currentPage=1"> 首页</a></li>

        <c:if test="${search.currentPage>1}">

            <li><a href="searchPoetry?currentPage=${search.currentPage-1}"> last&laquo;</a></li>

        </c:if>

        <c:forEach begin="${search.begin}" end="${search.end}" varStatus="i">


            <c:if test="${search.currentPage==(i.count+search.begin-1)}">
                <li class="active"><a
                        href="searchPoetry?currentPage=${i.count+search.begin-1}">${i.count+search.begin-1}</a></li>

            </c:if>

            <c:if test="${search.currentPage!=(i.count+search.begin-1)}">
                <li><a href="searchPoetry?currentPage=${i.count+search.begin-1}">${i.count+search.begin-1}</a></li>

            </c:if>

        </c:forEach>


        <c:if test="${search.currentPage<search.totalPage}">

            <li><a href="searchPoetry?currentPage=${search.currentPage+1}">next&raquo;</a></li>

        </c:if>

        <li><a href="searchPoetry?currentPage=${search.totalPage}"> 尾页</a></li>
        <br/>
        <br/>

        <div align="center">
            <!-- <input type="text" class="form-control" name="currentPage" placeholder="请输入页码"> -->
            <form class="form-inline" role="form" action="searchPoetry" method="get">
                <div class="form-group">
                    <input type="text" class="form-control" name="currentPage" placeholder="请输入页码">
                </div>

                <button type="submit" class="btn btn-default">跳转</button>
                <span> 第${search.currentPage}页 /共${search.totalPage}页</span>
            </form>
        </div>
    </ul>
</div>

<div style="height:109px;width:100%;"></div>


<%--
<script src="http://img1.zhongguoshici.com/static/js/jquery-1.11.1.min.js"></script>
<script src="http://img1.zhongguoshici.com/static/js/base.js?v=0.10"></script>
<script src="http://img1.zhongguoshici.com/static/js/index.js?v=0.10"></script>--%>

</body>

<script>

    <c:if test="${search.list.size()==0}">
    alert("没有找到相关的诗词!");
    </c:if>


</script>

</html>
