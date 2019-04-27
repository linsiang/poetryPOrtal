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
    <title>无题</title>
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

    <style>
        span {

            font-family: 华文楷体;
            font-size: larger;
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
    <h1><span style="font-family: 华文楷体;color: greenyellow ;font-size: xx-large">《无题》</span></h1>
    <p><span>李商隐</span></p>
    <p><span><span>相见时难别亦难，东风无力百花残。</span></span></p>
    <p><span><span>春蚕到死丝方尽，蜡炬成灰泪始干。</span></span></p>
    <p><span><span>晓镜但愁云鬓改，夜吟应觉月光寒。</span></span></p>
    <p><span><span>蓬山此去无多路，青鸟殷勤为探看。</span></span></p>
    <p><span></span><span>【赏析】</span></p>
    <p>
        <span>李商隐的诗大多是抒发他命运坎坷、仕途潦倒的情绪的，托古讽今、感物言志。<br>他的爱情诗情深语挚，缠绵悱恻，历来被人称道。<br>李商隐的诗构思新颖，富于想象，风采艳丽，吐韵铿锵，工于唱叹，感染力很强。</span>
    </p>

    <p><span>李商隐有不少无题诗，因为无题， 《无题》就成了题目。<br>所以无题，主要是因为所写的内容，不便于明白标出，或即使标出也不好拟题。<br>作者的无题诗不少是写爱情的。这首诗是写在礼法限制下恋爱不得自由的心灵悲剧。</span>
    </p>
    <div><img
            src="static/img/wuti1.jpeg"
    /></div>
    <p><span>在一个暮春时节，东风微微吹拂，百花开始零落。<br>一对男女情人此时相会本已恨晚，但即使是残春时节相见，也实属难得，<br>可虽然相见了，却还要忍痛分别。<br>由于两个人彼此倾心相爱，都像是正在吐丝的春蚕，不到死时情思不尽；也象是点燃的蜡烛，不到烧成灰烬时热泪不止。<br>在今后分别的日子里，由于思劳情苦，她晨妆临镜，空之忧愁浓软如云的鬓发，已经改变了乌黑的光泽；<br>我夜里吟咏心怀所思的诗篇，望着孤凄的月轮，神魂更感到分外寒冷。<br>她居住的地方有如蓬莱仙山那样难以造访，但好在它距这里并没有多远，<br>现在只盼有一个殷勤可靠的使者，为我们在中间传情递意，紧系相思，永联情好。<span
    ></span></span></p>
    <p><span>这首诗千余年来特别具有动情力，我认为主要是因它蕴含的情感细而且深，在特定题材领域达到了表现超绝的地步。</span></p>
    <div><img
            src="static/img/wuti2.jpeg"
    /></div>
    <p><span>“相见时难别亦难，东风无力百花残”。一对缠绵悱恻、凄咽欲绝的钟情男女，在晚春时节难得地相见了。<br>可是这相见机会之难得，在诗人笔下的两“难”中还未列入，列入的是“相见时难别亦难”——这两“难”才是真难。<br>因为碍于礼法、碍于环境，即使得以相见，见时也是特别难以处理的：不亲热接近，则失却良机，相见成空；<br>过分接近，受多方障碍，又人言可畏，这种“难”，是难得相见之后的难堪。<span
    ></span></span></p>
    <p><span>在这种难堪之后，情思未慰，却又不得不分别，这时很是难舍难分。<br>可是随着这种抑情相见之后，还要忍受别离之难，因为情侣连心，更是难以自处。<br>这样看来，诗句中虽有两个“难”字，但比字字写“难”还有更多的“难”意存在。<br>这些心难之感又发生在“东风无力百花残”的时节，更使多重难意又增加了几分。<br>这种多层次的感情分析，是细而又深的，在李商隐之前并未见如此写法。</span>
    </p>
    <div><img
            src="static/img/wuti3.jpeg"
    /></div>
    <p><span>第二联是以直接形象描绘方式出现的对于坚贞爱情的热烈执着的形容，<br>情意深刻而又深沉，说“春蚕到死丝方尽，蜡炬成灰泪始干”是因物联想，把感情对象化，<br>可以推崇为非凡妙悟；说这是情人表心明志、信誓旦旦之语，可以赞扬为精深至极。<br>用春蚕丝尽、蜡炬泪干，比喻生心不变、深情不改，是常中见奇，把前人有关的诗意加以极大的改造生发，<br>创造成更为美妙动人的形象，给后世的痴情男女以矢志不移的信条。<span
    ></span></span></p>
    <p><span>第三联“晓镜但愁云鬓改，夜吟应觉月光寒”，是诗人的心理想象对比。<br>由于想象是改造记忆表象的结果，所以这里有已往的生活形影，<br>也有现在感受入微的体验，还有对于来日的心情的投影，笔触工细，入于意识深微之处，出于联想流动之中。<br>在想象活动中的两个人，不论是镜窥之愁，还是吟寒之觉，都是主体情态中的动态的表现，<br>所以全诗的动中含情的特点，在这两句中得到了突出表现。</span>
    </p>
    <div><img
            src="static/img/wuti4.jpg"
    /></div>
    <p><span>最后两句表达的是殷勤恳切的热望， “蓬山此去无多路，青鸟殷勤为探看”。<br>这是在多层意义中收结了全诗。从别后相思之难苦，到两情坚贞之信誓，再到微及发肤的想象体验，都是心历愁苦，强作坚持，<br>但其中却有无限深情、忠贞意志，情感中的这个矛盾方面，是造成希望的起点，它可以横越波折，排除障碍，开辟心灵接近的通路。<br>这样，收结全诗，从诗情的内在逻辑上，则不应消沉下去，而应显示执着争取即有希望存在的意向。</span>
    </p>

    <p><span>“蓬山此去”两句正是恰到好处的收结诗句。写所爱在“蓬山”，当然是非常遥远的，<br>山海相阻，天人相隔，但由于心路历程无近远，所以诗中写“无多路”;对这种距离也只能看作是心理上的距离。<br>诗人希望有一只超凡的“青鸟”，让它来沟通这几乎是身处两个世界的一对情侣的心思。</span>
    </p>
    <div><img
            src="static/img/wuti5.jpg"
    /></div>
    <p><span>由于“青鸟”是神仙传说中的幻想物，所以“青鸟”的寄托具有很大的空幻性，<br>况且又是在“东风无力百花残”的时节，这只能使一对被分隔的情侣，把热望存于心底，<br>化成幻想，飘落在虚无缥缈的海上仙山，结果仍难免是心灵上的悲剧。</span>
    </p>
    <p><span>作者好像不愿意叫人看到他这种心底，甚至也不希望自己以及别的有情人的殷勤追求的结果就注定是这样的，<br>所以他放出了一只“青鸟”。可是，生活中的“青鸟”在哪里？它又能为人们做些什么？<br>此中人怎样才能历尽那“无多路”?到此，才能对前边的“春蚕到死丝方尽，蜡炬成灰泪始干”，<br>有进一步的体会与理解。诗人怕是要言中的！</span>
    </p>


</div>


</body>
</html>