<%--
  Created by IntelliJ IDEA.
  User: landmyp
  Date: 19-3-16
  Time: 下午1:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>欢迎登录</title>
    <link href="Wopop_files/style_log.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="Wopop_files/style.css">
    <link rel="stylesheet" type="text/css" href="Wopop_files/userpanel.css">
    <link rel="stylesheet" type="text/css" href="Wopop_files/jquery.ui.all.css">

</head>
<body class="login" mycollectionplug="bind">


<div class="login_m">
    <div class="login_logo"><img src="static/img/poetryLogo.png" width="300" height="60"></div>
    <div class="login_boder">

        <div class="login_padding" id="login_model">

            <h2>USERNAME</h2>
            <label>
                <input type="text" id="uname" name="uname" class="txt_input txt_input2" placeholder="姓名">
            </label>
            <h2>PASSWORD</h2>
            <label>
                <input type="password" name="textfield2" id="pwd" class="txt_input" placeholder="密码">
            </label>


            <div class="rem_sub">
                <%--   <div class="rem_sub_l">
                       <input type="checkbox" name="checkbox" id="save_me">
                       <label for="checkbox">Remember me</label>
                   </div>--%>
                <label>
                    <input type="submit" onclick="returnto()" class="sub_button" name="button" id="returnto" value="返回"
                           style="opacity: 0.7;">
                    <input type="submit" onclick="func()" class="sub_button" name="button" id="button" value="登录"
                           style="opacity: 0.7;">
                </label>
            </div>
        </div>


        <!--login_padding  Sign up end-->
    </div><!--login_boder end-->
</div><!--login_m end-->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script>

    $("#button").click(function () {

        var uname = $("#uname").val();
        var pwd = $("#pwd").val();
        $.ajax({
            type: "POST",
            dataType: 'json',
            data: {uname: uname, pwd: pwd},
            url: "tologin",
            success: function (msg) {
                if (msg == "error") {
                    alert("用户名或者密码错误!!")
                } else {
                    alert("登录成功!!")
                    location.href = "index";
                }
            }
        });
    });

</script>

<script>
    $("#returnto").click(function () {
        location.href = "index";
    });

</script>


</body>
</html>
