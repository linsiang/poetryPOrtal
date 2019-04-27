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
    <title>夏季荷花</title>
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


<div class="container" align="center">
    <h1 align="center"><span style="font-family: 华文楷体;color: greenyellow">  荷花盛开，唯美了整个夏天</span></h1>
    <p><span style="font-family: 华文楷体;color: greenyellow">炎炎夏日，顶着烈日开放，</span></p>
    <p><span style="font-family: 华文楷体;color: greenyellow">除了向日葵，就是荷花了。</span></p>
    <p><span style="font-family: 华文楷体;color: greenyellow">在太阳下，她开得如此艳丽，</span></p>
    <p><span style="font-family: 华文楷体;color: greenyellow">给夏天带来一抹清新的色彩。</span></p>
    <p><span><span></span></span></p>
    <div class="img-container"><img
            src="static/img/hehua1.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《诗经·泽陂》</span></span></p>
    <p><span><span><span></span></span></span></p>
    <p><span>彼泽之陂，有蒲与荷。</span></p>
    <p><span>有美一人，伤如之何。</span></p>
    <p><span>寤寐无为，涕泗滂沱。</span></p>
    <p><span></span></p>
    <p><span>《诗经》中已有荷花出现。那时，古代人民早已发现了荷花之美，多用来借喻。</span></p>
    <p><span><span></span></span></p>
    <div><img
            src="static/img/hehua2.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《青阳渡 》</span></span></p>
    <p><span>晋乐府</span></p>
    <p><span><span></span></span></p>
    <p><span>青荷盖绿水，芙蓉披红鲜。</span></p>
    <p><span>下有并根藕，上有并头莲。</span></p>
    <p><span></span></p>
    <p><span>“青荷盖绿水，芙蓉披红鲜”简直就是对荷花的形象写照。就这样不加任何修饰的词语，也不能掩盖荷花的清新之美呀。</span></p>
    <div><img
            src="static/img/hehua3.jpeg"
            data-loaded=0/></div>
    <p><span></span></p>
    <p><span><span>《晓出净慈寺送林子方》</span></span></p>
    <p><span>【宋】杨万里</span></p>
    <p><span><span></span></span></p>
    <p><span>毕竟西湖六月中，风光不与四时同。</span></p>
    <p><span>接天莲叶无穷碧，映日荷花别样红。</span></p>
    <p><span></span></p>
    <p><span
    >荷花从来都是一片一片的生长着的，所以，当她们生长时，绿叶一片，荷花映着日头，显得更加红艳，这就是西湖的荷花，<br></br>其实，又何尝不是别处的荷花呢。<span
    ></span></span></p>
    <p><span><span></span></span></p>
    <div class="img-container"><img
            src="static/img/hehua4.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《苏幕遮》</span></span></p>
    <p><span>【宋】周邦彦</span></p>
    <p><span><span></span></span></p>
    <p><span>燎沉香，消溽暑。鸟雀呼睛，侵晓窥檐语。</span></p>
    <p><span>叶上初阳干宿雨，水面清圆，一一风荷举。</span></p>
    <p><span><span></span></span></p>
    <p><span>故乡遥，何日去？家住吴门，久作长安旅。</span></p>
    <p><span>五月渔郎相忆否？小楫轻舟，梦入芙蓉浦。</span></p>
    <p><span></span></p>
    <p><span>这是一首思乡诗，诗人用荷花为媒，怀念那荷花遍布的江南家乡。这篇作品将荷花的风姿写得形象入神，历来被人赞诵。</span></p>
    <div class="img-container"><img
            src="static/img/hehua5.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《小池》</span></span></p>
    <p><span>【宋】杨万里</span></p>
    <p><span><span></span></span></p>
    <p><span>泉眼无声惜细流，树阴照水爱晴柔。</span></p>
    <p><span>小荷才露尖尖角，早有蜻蜓立上头。</span></p>
    <p><span></span></p>
    <p><span
    >这首诗传诵非常之广，就是因为“小荷才露尖尖脚，早有蜻蜓立上头”这种景象十分常见，<br></br>很多时候，当人们看到类似这种景象时，都会不自觉的吟诵出这两句。</span>
    </p>
    <p><span><span></span></span></p>
    <div class="img-container"><img
            src="static/img/hehua6.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《南乡子》</span></span></p>
    <p><span>【前蜀】李珣</span></p>
    <p><span>乘彩舫，过莲塘，棹歌惊起睡鸳鸯。</span></p>
    <p><span>游女带香偎伴笑，争窈窕，竞折团荷遮晚照。</span></p>
    <p><span></span></p>
    <p><span>此词写的是南国水乡少女的一个生活片断，写春女游莲塘，相与戏谑的情景。<br>莲塘泛彩舟，棹歌惊睡鸳，游女带香，竞折团荷，笑遮晚照而犹不忘自呈其姿容。<br></br>活生生一幅活泼俏丽的风俗画。</span>
    </p>
    <p><span></span></p>
    <div class="img-container"><img
            src="static/img/hehua7.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《荷花》</span></span></p>
    <p><span>【清】曹寅</span></p>
    <p><span><span></span></span></p>
    <p><span>一片秋云一点霞，十分荷叶五分花。</span></p>
    <p><span>湖边不用关门睡，夜夜凉风香满家。</span></p>
    <p><span></span></p>
    <p><span>记得童年时，在老家，荷花池随处可见，晚上睡觉时，荷花的清香伴着风吹来，真是恬淡美好的记忆呀。</span></p>
    <p><span></span></p>
    <div class="img-container"><img
            src="static/img/hehua8.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《赠荷花》</span></span></p>
    <p><span>【唐】李商隐</span></p>
    <p><span><span></span></span></p>
    <p><span>世间花叶不相伦，花入金盆叶作尘。</span></p>
    <p><span>惟有绿荷红菡萏，卷舒开合任天真。</span></p>
    <p><span>此花此叶长相映，翠减红衰愁杀人！</span></p>
    <p><span></span></p>
    <p><span>写下这首诗的时候，李商隐刚刚新婚。只有荷花是红花绿叶相配，荷叶有卷有舒，荷花有开有合，衬托得那样完美自然。<br></br>荷花与荷叶长期互相交映，当荷叶掉落，荷花凋谢之时，是多么令人惋惜啊。</span>
    </p>
    <p><span>这首诗明里句句都是写花。但实际上句句都是写人。借荷花表明自己的心曲。既说明自己与女方可堪匹配。是天生的一对儿；<br>又表明了两人相配之美满；又表明了自己的心愿与忧虑。委婉含蓄，耐人寻味。</span>
    </p>
    <p><span><span></span></span></p>
    <div class="img-container"><img
            src="static/img/hehua9.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《忆王孙·夏词》</span></span></p>
    <p><span>【宋】李重元</span></p>
    <p><span><span></span></span></p>
    <p><span>风蒲猎猎小池塘，过雨荷花满院香，</span></p>
    <p><span>沉李浮瓜冰雪凉。</span></p>
    <p><span>竹方床，针线慵拈午梦长。</span></p>
    <p><span></span></p>
    <p><span
    >小池塘里，风中的水草猎猎有声，雨后的荷花更散发出沁人的芬芳，使得满院都是荷花的香味。<br></br>炎炎的夏日，满院荷花送来香气，衬着轻风，真的是十分凉爽美好呢！</span>
    </p>
    <p><span><span></span></span></p>
    <div class="img-container"><img
            src="static/img/hehua10.jpeg"
            data-loaded=0/></div>
    <p><span><span></span></span></p>
    <p><span><span>《祝英台近·荷花》</span></span></p>
    <p><span>【宋】高观国 </span></p>
    <p><span><span></span></span></p>
    <p><span>拥红妆，翻翠盖，花影暗南浦。</span></p>
    <p><span>波面澄霞，兰艇采香去。</span></p>
    <p><span>有人水溅红裙，相招晚醉，</span></p>
    <p><span>正月上、凉生风露。 </span></p>
    <p><span><span></span></span></p>
    <p><span>两凝伫。别后歌断云间，娇姿黯无语。</span></p>
    <p><span>魂梦西风，端的此心苦。</span></p>
    <p><span>遥想芳脸轻颦，凌波微步，</span></p>
    <p><span>镇输与、沙边鸥鹭。</span></p>
    <p><span></span></p>
    <p><span>诗人红妆、翠盖来形容荷花、荷叶，以“拥”字衬托荷花之艳丽，以“翻”字刻画风吹荷叶的状态，传神又贴切。</span></p>
    <p><span></span></p></div>
<audio height="0" width="0" id="musicAudio" data-play-index>

</audio>
</div>

</body>

</html>