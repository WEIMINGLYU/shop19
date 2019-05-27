<!DOCTYPE html">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html ">
<head>
<meta  charset=utf-8" />
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript">
        function  getCookie() {
            var setCookie =decodeURI(document.cookie);

            var arrcookie = setCookie.split("; ");//分割
            for ( var i = 0; i < arrcookie.length; i++) {
                var arr = arrcookie[i].split("=");
                if (arr[0] == "user"){
                  var  users = arr[1].split("-");
                    $("#username").val(users[0]);
                    $("#password").val(users[1]);
                }
            }


        }
     /*  $(function(){
        if(getCookie("user")!="") {
            var cookie = getCookie("user");
            alert(cookie);
                $("#username").val(cookie.split("-")[0]);
                $("#password").val(cookie.split("-")[1]);
        }

       });*/

    </script>
</head>

<body onload="getCookie()">

	<div class="sign-logo w1200">
        <h1 class="zl-h11"><a href="${pageContext.request.contextPath}/ai.com" title="宅客微购"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a></h1>
    </div>

	<div class="sign-con w1200">
	  <img src="${pageContext.request.contextPath}/images/logn-tu.gif" class="sign-contu f-l" />

      <div class="sign-ipt f-l">
        <form action="${pageContext.request.contextPath}/user/checkLogin.do" method="post">
    	<p>用户名</p>
        <input type="text" placeholder="请输入用户名" name="username" id="username" value="${username}" required/>
        <p>密码</p>
        <input type="password" placeholder="请输入密码" name="password" id="password" required value="${password}" autofocus/><br /><span style="color: red"> ${msg2}</span>
        <span style="color: red"> ${msg}</span>
        <button class="slig-btn" type="submit">登录</button>

            <p><input type="checkbox" style="width: 10px;height: 10px" id="renumberMe"  name="renumberMe" ${cookie.user!=null?"checked":" "} />记住我
              &ensp; &ensp; &ensp; &ensp; &ensp; &ensp; &ensp;
              没有账号？请<a href="${pageContext.request.contextPath}/user/registerPage.do">注册</a>   </p>
        </form>
        <div class="sign-qx">
        	<a href="#" class="f-r"><img src="${pageContext.request.contextPath}/images/sign-xinlan.gif" /></a>
        	<a href="#" class="qq f-r"><img src="${pageContext.request.contextPath}/images/sign-qq.gif" /></a>
            <div style="clear:both;"></div>
        </div>


    </div>

    <div style="clear:both;"></div>
</div>

    <!--底部一块-->
<%@include file="bottom.jsp"%>
</body>
</html>
