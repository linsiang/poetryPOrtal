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


<div class="container">
    <%--  轮播图--%>


    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="static/img/girl.jpeg" alt="First slide">
                <div class="carousel-caption"></div>
            </div>
            <div class="item">
                <img src="static/img/gilr1.png" alt="Second slide">
                <div class="carousel-caption"></div>
            </div>
            <div class="item">
                <img src="static/img/girl2.png" alt="Third slide">
                <div class="carousel-caption"></div>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


</div>


<div class="raiders mt20">
    <div class="raiders_wrap wrap1000">
        <div class=title>
            <h2><a href="JavaScript:;">热门诗人</a></h2></div>
    </div>
</div>
<div class="fold mt20 mb20">
    <div class="fold_wrap">

        <ul class="clearfix" id="sm">
            <li class="active">
                <a href="details?poetryAuthor=白居易" target="_blank">
                    <div class="mask_b">
                        <h4>白居易</h4></div>
                    <div class="pic_auto pic_auto1"></div>

                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=杜甫" target="_blank">
                    <div class="mask_b">
                        <h4>杜甫</h4></div>
                    <div class="pic_auto pic_auto2"></div>
                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=李白" target="_blank">
                    <div class="mask_b">
                        <h4>李白</h4></div>
                    <div class="pic_auto pic_auto3"></div>
                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=李清照" target="_blank">
                    <div class="mask_b">
                        <h4>李清照</h4></div>
                    <div class="pic_auto pic_auto4"></div>
                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=陆游" target="_blank">
                    <div class="mask_b">
                        <h4>陆游</h4></div>
                    <div class="pic_auto pic_auto5"></div>
                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=苏轼" target="_blank">
                    <div class="mask_b">
                        <h4>苏轼</h4></div>
                    <div class="pic_auto pic_auto6"></div>
                </a>
            </li>
            <li>
                <a href="details?poetryAuthor=王维" target="_blank">
                    <div class="mask_b">
                        <h4>王维</h4></div>
                    <div class="pic_auto pic_auto7"></div>
                </a>
            </li>
        </ul>
    </div>
</div>


<div class="raiders mt20">
    <div class="raiders_wrap wrap1000">
        <div class=title>
            <h2><a href="JavaScript:;">诗词专题</a></h2></div>
        <div class="pic_rad pt10 clearfix">
            <div class="pic_shaw right">
                <ul>
                    <li class=right><a href="noTitle" target=_blank><img
                            data-src="static\img\timg.gif"></a>
                        <p><a href="noTitle" target=_blank>相见时难别亦难</a></p>
                    </li>
                    <li class=left><a href="junren" target=_blank><img
                            data-src="static/img/junren.png"></a>
                        <p><a href="junren" target=_blank>玉楼春 · 军人三叹</a></p></li>
                </ul>
            </div>
            <div class=tab_pic_show>
                <ul>
                    <li class=on><span></span><a href="yiqixing" target=_blank>意琦行：
                        亦狂亦侠亦超尘</a>
                    </li>
                    <li><span class=ei_icon></span><a href="qingming"
                                                      target=target=_blank>宋词里的清明</a>
                    </li>
                    <li><span class=ei_icon></span><a href="dfToSee" target=_blank>古风原创-唯美意境</a>
                    </li>
                    <li><span class=ei_icon></span><a href="hehua" target=_blank>出淤泥而不染，荷花之乡</a></li>
                </ul>
                <OL>
                    <li style="display: list-item"><a href="yiqixing" target=_blank><img
                            alt=亦狂亦侠亦超尘 data-src="static/img/yiqixing.png" width=380
                            height=220></a>
                    </li>
                    <li style="display: none"><a href="qingming" target=_blank><img
                            alt=宋词里的清明 data-src="static/img/qingming" width=380
                            height=220></a>
                    </li>
                    <li style="display: none"><a href="dfToSee" target=_blank><img
                            alt=古风原创-唯美意境 data-src="static/img/gufeng.png" width=380
                            height=220></a>
                    </li>
                    <li style="display: none"><a href="hehua" target=_blank><img
                            alt=出淤泥而不染，荷花之乡 data-src="static/img/hehua.gif" width=380
                            height=220></a></li>
                </OL>
            </div>
        </div>
    </div>
</div>
<!--no record end-->
<!--fold start -->
<!--fold start-->


<form role="form">
    <div class="container">


        <div class="row" align="center">
            <div class="b-b b-light m-t-md m-b-md">
                <div class="p-xs b-t b-r b-l b-2x b-light dk" style="max-width: 210px">
                    <img src="static/img/taolun.png" width="200px" height="50px" align="center">
                </div>
            </div>
        </div>


        <div class="form-group">
            <textarea id="talkabout" placeholder="说点什么吧！" class="form-control" rows="3"></textarea>
        </div>
        <div>

            <button type="button" class="btn btn-success" id="talk" name="talk">提交评论</button>
        </div>

    </div>
</form>

<br>

<!--raiders-->

<div class="container">
    <div class="progress progress-striped active">
        <div class="progress-bar progress-bar-success" role="progressbar"
             aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
             style="width: 100%;">
            <span class="sr-only">100% 完成</span>
        </div>
    </div>

    <table class="table table-hover">

        <thead>
        <td width="15%" align="left"><h2> 用户</h2></td>
        <td width="65%" align="center">内容</td>
        <td width="20%" align="left">发表时间</td>
        </thead>
        <tbody>

        <c:forEach items="${list.list}" var="talk" varStatus="i">
            <tr>
                <td width="15%"><h2><img src="static/img/huaji.png" width="30px" height="30px"> ${talk.uname}说:</h2>
                </td>
                <td width="65%">${talk.contants} </td>
                <td width="20%">${talk.talktimestr}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div align="center">

        <ul class="pagination">


            <li><a href="index?currentPage=1"> 首页</a></li>

            <c:if test="${list.currentPage>1}">

                <li><a href="index?currentPage=${list.currentPage-1}"> last&laquo;</a></li>

            </c:if>

            <c:forEach begin="${list.begin}" end="${list.end}" varStatus="i">


                <c:if test="${list.currentPage==(i.count+list.begin-1)}">
                    <li class="active"><a href="index?currentPage=${i.count+list.begin-1}">${i.count+list.begin-1}</a>
                    </li>

                </c:if>

                <c:if test="${list.currentPage!=(i.count+list.begin-1)}">
                    <li><a href="index?currentPage=${i.count+list.begin-1}">${i.count+list.begin-1}</a></li>

                </c:if>

            </c:forEach>


            <c:if test="${list.currentPage<list.totalPage}">

                <li><a href="index?currentPage=${list.currentPage+1}">next&raquo;</a></li>

            </c:if>

            <li><a href="index?currentPage=${list.totalPage}"> 尾页</a></li>
            <br/>
            <br/>

            <div align="center">
                <!-- <input type="text" class="form-control" name="currentPage" placeholder="请输入页码"> -->
                <form class="form-inline" role="form" action="index" method="get">
                    <div class="form-group">
                        <input type="text" class="form-control" name="currentPage" placeholder="请输入页码">
                    </div>

                    <button type="submit" class="btn btn-default">跳转</button>
                    <span> 第${list.currentPage}页 /共${list.totalPage}页</span>
                </form>
            </div>
        </ul>


    </div>
    <%--
                <li><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li class="disabled"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>--%>


</div>
<div id="m_contentend" style="z-index: 200;"></div>

<div class="container-fluid bg-copyright m-t-lg">
    <div class="container">
        <div class="row">
            <div class="col-md-8 p-lg">
                <h4 class="text-white m-b-md">版权信息</h4>
                <p>本站内容为赣南师范大学指导下的学生毕设作品</p>
                <p>Copyright &copy; 2018-2019 全景统计</p>
            </div>
            <div class="col-md-4 p-lg">
                <h4 class="text-white m-b-md"><a href="javascript:;" style="color:#fff;">关于我们</a></h4>
                <div class="media">
                    <div class="media-left">
                        <img src="static/picture/home-icon.png" alt="关于我们">
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">地址</h4>
                        <p>江西省赣州市</p>
                        <p>赣南师范大学</p>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>

</div>

<script>

    $("#talk").click(function () {
        var con = $("#talkabout").val();
        $.ajax({
            url: "checkTalk",
            dataType: "json",
            type: "post",
            data: {"con": con},
            success: function (msg) {
                if (msg == "error") {
                    location.href = "snowLogin";
                }
                if (msg == "nonull") {
                    alert("输入的内容不能为空");

                }
                if (msg == "ok") {
                    location.href = "index";
                }
            }
        });


    });


</script>


<script type="text/javascript">
    var tjObj_rt2 = new Date();
</script>
<div id="m_adsContainer" style="display: none"></div>

<script type="text/javascript">var IndexController = {
    resourceMap: {"search_keywordtip": "\u5982\u4F4D\u7F6E\\\u9152\u5E97\u540D\\\u54C1\u724C"},
    vm: {
        "checkInDateDes": "\u4ECA\u5929",
        "checkInDateStr": "2019-01-16",
        "checkOutDateDes": "\u660E\u5929",
        "checkOutDateStr": "2019-01-17",
        "cityId": "0101",
        "cityName": "\u5317\u4EAC\u5E02",
        "cityNameCn": "\u5317\u4EAC\u5E02",
        "cityNameEn": "Beijing",
        "citySeoNameEn": "beijing",
        "indexCacheMode": 1,
        "login": false,
        "today": "2019-01-16 00:00:00"
    },
    emergencyNotice: null,
    esid: null,
    isLogin: false,
    enabledYesterday: false,
    serverTime: "2019-01-16",
    serverTimeHour: "2019-01-16 11:13:30",
    webHotelTjObj: {
        "st": "1547608411038",
        "pt": "pc-elong-homepage",
        "idc": "idc2",
        "pturl": "http:\/\/www.elong.com\/",
        "et": "show",
        "cid": "622e0365-25d8-4b9c-8c87-41dbbe1b242d"
    },
    needElongRisk: true,
    needCtripRisk: true,
    showLoginOption: true,
    showCommentInfo: true,
    commonStaticPath: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/common\/",
    hotelStaticJsPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/views\/",
    hotelStaticCssPath: "http:\/\/m.elongstatic.com\/static\/webapp\/pc_static\/pc_hotel\/2018\/09\/11\/css\/",
    hotelStaticJsPathTmapi: "\/\/file.40017.cn\/js40017cnproduct\/cn\/h\/elong_pc\/2019114_18.12037\/",
    hotelStaticCssPathTmapi: "\/\/file.40017.cn\/css40017cnproduct\/cn\/h\/elong_pc\/2019114_13.12017\/",
    appUrlVersion: "20190115054936",
    urlVersion: null,
    jsPath: "..\/..\/..\/web\/hotel\/views\/",
    basePath: "",
    curDate: "2019-01-16",
    getCmsPicture: function (isElongIndex, callback, E, httpmethod, dataType, timeoute, enabledCache) {
        E.ajax.exec("/ajax/elongIndex/getCmsPicture", {isElongIndex: isElongIndex}, callback, httpmethod, dataType, timeoute, enabledCache);
    },
    getFavHotelInfosByPage: function (callback, E, httpmethod, dataType, timeoute, enabledCache) {
        E.ajax.exec("/ajax/elongIndex/getfavhotelinfosbypage", {}, callback, httpmethod, dataType, timeoute, enabledCache);
    },
    getOrderToReview: function (callback, E, httpmethod, dataType, timeoute, enabledCache) {
        E.ajax.exec("/ajax/elongIndex/getordertoreview", {}, callback, httpmethod, dataType, timeoute, enabledCache);
    },
    getHoteBasicInfo: function (hotelIds, callback, E, httpmethod, dataType, timeoute, enabledCache) {
        E.ajax.exec("/ajax/elongIndex/gethotebasicinfo", {hotelIds: hotelIds}, callback, httpmethod, dataType, timeoute, enabledCache);
    },
    getTrainTickt: function (callback, E, httpmethod, dataType, timeoute, enabledCache) {
        E.ajax.exec("/ajax/elongIndex/getTrainTickt", {}, callback, httpmethod, dataType, timeoute, enabledCache);
    }
};
var pageController = IndexController;</script>


<%--
<script>




    var fnTextPopup = function (arr, options) {
        // arr参数是必须的
        if (!arr || !arr.length) {
            return;
        }
        // 主逻辑
        var index = 0;



        document.documentElement.addEventListener('click', function (event) {
            var x = event.pageX, y = event.pageY;
            var eleText = document.createElement('span');
            eleText.className = 'text-popup';
            this.appendChild(eleText);
            if (arr[index]) {
                eleText.innerHTML = arr[index];
            } else {
                index = 0;
                eleText.innerHTML = arr[0];
            }
            // 动画结束后删除自己
            eleText.addEventListener('animationend', function () {
                eleText.parentNode.removeChild(eleText);
            });
            // 位置
            eleText.style.left = (x - eleText.clientWidth / 2) + 'px';
            eleText.style.top = (y - eleText.clientHeight) + 'px';
            // index递增
            index++;
        });
    };

    fnTextPopup(['富强', '民主', '文明', '和谐', '自由', '平等', '公正', '法治', '爱国', '敬业', '诚信', '友善']);
</script>


--%>


<script type="text/javascript">
    var hotelPageController = pageController;//兼容
    var tj_jsStartTime = new Date().getTime();
</script>
<script type="text/javascript">
    document.getElementsByClassName('weekDesc')[0].innerHTML = pageController.vm.checkInDateDes;
    document.getElementsByClassName('weekDesc')[1].innerHTML = pageController.vm.checkOutDateDes;
</script>
<script type="text/javascript" src="static/js/tjmvt.js"></script>
<script type="text/javascript"
        src="static/js/fingerprint.pc.js"></script>
<script data-main='//file.40017.cn/js40017cnproduct/cn/h/elong_pc/2019114_18.12037/elong_index/elong_index_cn.js?20190115054936'
        src='static/js/require.js'></script>

</body>
</html>
