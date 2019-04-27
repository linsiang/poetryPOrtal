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
    <meta charset="utf-8">
    <link type="image/x-icon" rel="shortcut icon" href="http://www.shicifuns.com/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="http://img1.zhongguoshici.com/static/css/style_base.css?v=0.10"/>
    <link rel="stylesheet" type="text/css" href="http://img1.zhongguoshici.com/static/css/style_index.css?v=0.10"/>
    <title>${authorDetails.poetryAuthor}</title>
    <script src="http://zhongguoshici.com/ajax/ip-loc/js-format" type="text/javascript"></script>
    <script src="http://img1.zhongguoshici.com/static/js/header.js?v=0.10"></script>
</head>
<body>


<div class="css_content">
    <div class="css_body">
        <div class="css_body_left">
            <div class="writer_detail">
                <div class="header_link">
                    <a href="index">诗集首页</a>
                    <span>&gt;</span>
                    <a href="javascript:void(0);" class="end">作者详情</a>
                </div>
                <div class="clear"></div>
                <div class="detial_block">
                    <div class="detial_header">
                        <img src="http://img1.zhongguoshici.com/static/images/ic_star_green.png" width="18px"
                             height="18px"/>
                        <span>作者介绍</span>
                    </div>
                    <div class="detial_frame">
                        <img class="writer_img" src="${authorDetails.imags}" width="125px" height="150px"/>
                        <div class="writer_right">
                            <div class="writer_info">
                                <a href="/zuozhe/details/55"><span
                                        class="writer">${authorDetails.poetryAuthor}</span></a>
                                <span class="dynasty">朝代：${authorDetails.dynasty}</span>
                            </div>
                            <div class="writer_content">${authorDetails.description}</div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="clear"></div>

            <div class="common_header" style="width:800px;margin-top:15px;">
                <span>相关作品</span>

                <div class="bottom_line">
                    <div class="speed"></div>
                </div>
            </div>
            <ul class="writing">

                <c:forEach items="${authorDetails.poetryDate}" var="list">

                    <a href="#" target="_blank">
                        <li>
                            <div class="poem_title">
                                <span class="tag">诗词赏析</span>
                                <span>${list.poetry_title}</span>
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
                                 src="http://media.zhongguoshici.com/logos/537342ee310023e4ba7e92fa90ccbae9"
                                 width="113px" height="138px" title="诗人名"/>
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
                                 src="http://media.zhongguoshici.com/logos/3fe8fe6a6bcd534f8664a2db4ad16ea9"
                                 width="113px" height="138px" title="诗人名"/>
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
                                 src="http://media.zhongguoshici.com/logos/0bbd0c3718a87a86e141ca7d1e329ad5"
                                 width="113px" height="138px" title="诗人名"/>
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
                                 src="http://media.zhongguoshici.com/logos/bb61cb4c362785264b872cc292cba782"
                                 width="113px" height="138px" title="诗人名"/>
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
                                 src="http://media.zhongguoshici.com/logos/c57eceea655eb9974c0f9fc6ee9b1f5c"
                                 width="113px" height="138px" title="诗人名"/>
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
<div style="height:79px;width:100%;"></div>

<script src="http://img1.zhongguoshici.com/static/js/jquery-1.11.1.min.js"></script>
<script src="http://img1.zhongguoshici.com/static/js/base.js?v=0.10"></script>
<script src="http://img1.zhongguoshici.com/static/js/index.js?v=0.10"></script>
<script src="http://img1.zhongguoshici.com/static/js/template-native.js"></script>

</body>
</html>
