<%--
  Created by IntelliJ IDEA.
  User: landmyp
  Date: 19-3-19
  Time: 下午1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>登录</title>
    <script src="js/jquery.min.js"></script>
    <script src="js/snow.js"></script>
    <style type="text/css">
        html {
            width: 100%;
            height: 100%;
        }

        body {

            background-repeat: no-repeat;

            background-position: center center #2D0F0F;

            background-color: #00BDDC;

            background-image: url(images/snow1.jpg);

            background-size: 100% 100%;

        }

        .snow-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 100001;
        }

    </style>
</head>
<body>
<!-- 雪花背景 -->
<div class="snow-container"></div>
<div style="text-align:center;">

</div>
</body>
</html>