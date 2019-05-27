<!DOCTYPE html >
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta  charset=utf-8"/>
<title>注册</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script>
        getCode();
        var code = "";
        function getCode() {
            $.ajax({
                url:"${pageContext.request.contextPath}/getCode.do",
                dataType:"text",
                success:function (data) {

                    code = data;
                }
            })

        }

        /*修改验证码*/
       function changeCode(){
           $("#yzm").attr("src","${pageContext.request.contextPath}/yzm.do?i="+Math.random()*1000);
       }
       /*注册页通过AJAX查数据库重复名字*/
        $(function () {
         var username =  $("#username");
         var password =  $("#repassword");
            var yzm = $("#yzm");
            yzm.click(function () {
                changeCode();
            });


             username.change(function () {
                    $.ajax({
                     url:"${pageContext.request.contextPath}/user/register.do",
                     data:{
                            username:username.val()
                          },
                     dataType:"text",
                     success:function(data){
                         if(data=="ok"){

                             $("#msg").attr("class","dui");
                             $("#msg").text("用户名可以使用");

                         }else{

                             $("#msg").attr("class","cuo");
                             $("#msg").text("用户名已存在");


                         }

                     }




                 });

             });
             password.change(function () {
                 if($("#password").val()!=password.val()){
                     $("#msg2").attr("class","cuo");
                     $("#msg2").text("两次密码不一致，请重新输入")
                 }else{
                     $("#msg2").attr("class","dui");

                 }


             });
            getCode();
 });

        function checkMobile(){

            var _phone = $("#phone").val();
            if(!(/^1[3|4|5|8][0-9]\d{8}$/.test(_phone))){
                alert("不是完整的11位手机号或者正确的手机号");
                return false;
            }
        }
       function checkForm(){
           getCode();
           setTimeout('getCode()',1000);
           var read = $("#read");
            if(read.prop("checked")){
               var magClass = $("#msg").attr("class");
               var magClass2 = $("#msg2").attr("class");
               while(magClass!="cuo" && magClass2=="dui"){

                   if(code.toUpperCase()==$("#yzmCode").val().toUpperCase()){
                    return true;
                   }else{
                       alert("请输入正确验证码");
                       return false;
                   }
                   return  true;
               }else{
                   alert("请检查页面信息后再提交")
                   return false;
               }
               return  true;
           }else{
               alert("请先阅读协议再提交")
               return false;
           }

       }

    </script>
</head>

<body>

	<!--header-->
 <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="TOP.jsp"%>
    
    <!--内容开始-->
    <form action="${pageContext.request.contextPath}/user/doRegister.do" method="post" onsubmit="return checkForm()">
    <div class="password-con registered">
    	<div class="psw">
        	<p class="psw-p1">用户名</p>
            <input type="text" id="username"  name="username" placeholder="请输入您的用户名" required/>
            <span class="${!empty username?"cuo":""}" id="msg">${username}</span>
        </div>
    	<div class="psw">
        	<p class="psw-p1">输入密码</p>
            <input type="password" id="password" name="password"  placeholder="请输入密码" required/>
            <span class="${!empty password?"cuo":""}" >${password}</span>

        </div>
    	<div class="psw">
        	<p class="psw-p1">确认密码</p>
            <input type="password" id="repassword" placeholder="请再次确认密码" required/>
            <span class="${msg2}" id="msg2"></span>
        </div>
        <div class="psw">
            <p class="psw-p1">姓名</p>
            <input type="text"  id="name" name="name" placeholder="请输入您的姓名" required/>
            <span class="${!empty nameFlag?"cuo":""}" >${nameFlag}</span>

        </div>
        <div class="psw">
            <p class="psw-p1">地址</p>
            <input type="text" id="addr" name="addr" placeholder="请输入地址" required/>
            <span class="${!empty addr?"cuo":""}" >${addr}</span>

        </div>
    	<div class="psw psw2">
        	<p class="psw-p1">手机号</p>
            <input type="text" id="phone" onchange="return checkMobile()" name="phone" placeholder="请输入手机号" required/>
            <span class="${!empty phone?"cuo":""}" >${phone}</span>
            <%--
<button>获取短信验证码</button>--%>
        </div>
        <div class="psw psw2">
            <p class="psw-p1">邮箱</p>
            <input type="email"  name="email" placeholder="请输入邮箱" required/>
            <span class="${!empty email?"cuo":""}" >${email}</span>

        </div>


    	<div class="psw psw3">
        	<p class="psw-p1">验证码</p>
            <input type="text" placeholder="请输入验证码" name="yzmCode" id="yzmCode" required /><span style="color: red">${codeMsg}</span>

        </div>
        <div class="yanzhentu">
        	<div class="yz-tu f-l">
            	<img src="${pageContext.request.contextPath}/yzm.do" id="yzm" />
            </div>
            <p class="f-l">看不清？<a href="JavaScript:;" onclick="changeCode()">换张图</a></p>
            <div style="clear:both;"></div>
        </div>
        <div class="agreement">
        	<input type="checkbox" id="read" required></input>
            <p>我有阅读并同意<span>《宅客微购网站服务协议》</span></p>
        </div>
        <button class="psw-btn" input type="submit" id="sbb">立即注册</button>
        <p class="sign-in">已有账号？请<a href="${pageContext.request.contextPath}/user/doLogin.do"> 登录</a></p>
    </div>
    </form>
    <!--底部一块-->
    <%@include file="bottom.jsp"%>
    
</body>
</html>
