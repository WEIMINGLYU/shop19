<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        function save(){
            var password=$("#password");
            var name=$("#name");
            var email=$("#email");
            var addr=$("#addr");
            var phone=$("#phone");
            var flag = true;

            if(password.val().trim()=="" || password.val()==null){
                alert("密码不能为空");
                flag = false;
            }
            if(email.val().trim()=="" || email.val()==null){
                alert("邮箱不能为空");
                flag = false;
            }
            if(name.val().trim()=="" || name.val()==null){
                alert("姓名不能为空");
                flag = false;
            }
            if(addr.val().trim()=="" || addr.val()==null){
                alert("地址不能为空");
                flag = false;
            }
            if(phone.val().trim()=="" || phone.val()==null){
                alert("电话不能为空");
                flag = false;
            }
            if(phone.val().trim()!="" || phone.val()!=null) {
                if (!(/^1[3|4|5|8][0-9]\d{8}$/.test(phone.val()))) {
                    alert("不是完整的11位手机号或者正确的手机号");
                    flag = false;
                }

            }


            return flag;
        }




        $(function(){
            $("#rePassword").change(function () {

                if($("#rePassword").val()!=$("#password").val()){

                    $("#msg").text("两次密码不一致，请重新输入")
                    return false;
                }
            });



            $("#save").click(function () {
                $.ajax({
              url:"${pageContext.request.contextPath}/user/update.do",
              data:{
                  uid:${sessionScope.user.uid},
                  password:$("#password").val(),
                  name:$("#name").val(),
                  email:$("#email").val(),
                  addr:$("#addr").val(),
                  phone:$("#phone").val(),
                  rePassword:$("#rePassword").val(),
              },

              dataType:"text",
              success:function(data) {
                  if(data=="ok"){
                      alert("修改成功");
                  }else{
                      alert("修改失败");
                  }
              }
          })
      })



    })
    </script>
</head>

<body style="position:relative;" >

	<!--header-->
<%@include file="header.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="TOP.jsp"%>
	<!--nav-->
   <%@include file="nav.jsp"%>
    
    <!--内容开始-->
    <div class="personal w1200">
    	<div class="personal-left f-l">
        	<div class="personal-l-tit">
            	<h3>个人中心</h3>
            </div>
            <ul>
                <li class="current-li per-li1"><a href="#">消息中心<span>></span></a></li>
                <li class="per-li2"><a href="${pageContext.request.contextPath}/user/personal.do">个人资料<span>></span></a></li>
                <li class="per-li3"><a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=1">我的订单<span>></span></a></li>
                <li class="per-li4"><a href="#">我的预约<span>></span></a></li>
                <li class="per-li5"><a href="${pageContext.request.contextPath}/cart/showCart.do">购物车<span>></span></a></li>
                <li class="per-li6"><a href="#">管理收货地址<span>></span></a></li>
                <li class="per-li7"><a href="#">店铺收藏<span>></span></a></li>
                <li class="per-li8"><a href="#">购买记录<span>></span></a></li>
                <li class="per-li9"><a href="#">浏览记录<span>></span></a></li>
                <li class="per-li10"><a href="#">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="personal-r f-r">
        	<div class="personal-right">
                <div class="personal-r-tit">
                    <h3>个人资料</h3>
                </div>
                <div class="data-con">
                	<div class="dt1">
                    	<p class="f-l">当前头像：</p>
                        <div class="touxiang f-l">
                        	<div class="tu f-l">
                            	<a href="#">
                                	<img src="${pageContext.request.contextPath}/images/data-tu.gif" />
                                    <input type="file" name="" id="" class="img1" />
                                </a>
                            </div>
                            <a href="JavaScript:;" class="sc f-l" shangchuang="">上传头像</a>
                            <div style="clear:both;"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">姓名：</p>
                        <input type="text" id="name" name="name" value="${sessionScope.user.name}" disabled="disabled" required/>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">用户名：</p>
                        <input type="text" id="username" name="username" value="${sessionScope.user.username}" required disabled="disabled"/>
                        <div style="clear:both;"></div>
                    </div>
                 <%--   <div class="dt1 dt2">
                    	<p class="dt-p f-l">性别：</p>
                        <input type="radio" name="hobby" value="nan"></input><span>男</span>
                        <input type="radio" name="hobby" value="nan"></input><span>女</span>
                        <div style="clear:both;"></div>
                    </div>--%>
                    <div class="dt1">
                    	<p class="dt-p f-l">手机号：</p>
                        <input type="tel" id="phone" name="phone"  pattern="^(0|86|17951)?(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}" value="${sessionScope.user.phone}" required/><span style="color: red">${phone}</span>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                        <p class="dt-p f-l">地址：</p>
                        <input type="text" id="addr" name="addr" value="${sessionScope.user.addr}" required/><span style="color: red">${addr}</span>
                        <div style="clear:both;"></div>
                    </div>

                   <%-- <div class="dt1">
                    	<p class="dt-p f-l">验证码：</p>
                        <input type="text" value="" required/>
                        <div style="clear:both;"></div>
                    </div>--%>
                    <div class="dt1">
                    	<p class="dt-p f-l">邮箱：</p>
                        <input type="email" id="email" name="email" value="${sessionScope.user.email}" /><span style="color: red">${email}</span>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 dt3">
                        <p class="dt-p f-l">密码：</p>
                        <input type="password" id="password" name="password" value="${sessionScope.user.password}" required/><span style="color: red">${password}</span>

                        <div style="clear:both;"></div>
                    </div>

                    <div class="dt1 dt3">
                        <p class="dt-p f-l">确认密码：</p>
                        <input type="password" id="rePassword" name="rePassword" required/><span style="color: red" id="msg">${msg}</span>

                        <div style="clear:both;"></div>
                    </div>
                <%--    <div class="dt1 dt4">
                    	<p class="dt-p f-l">新密码：</p>
                        <input type="text" value="" />
                        <button>修改密码</button>
                        <div style="clear:both;"></div>
                    </div>--%>
                    <button class="btn-pst" id="save" onclick="return save()">保存</button>

                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <!--上传头像弹窗
    <div class="tanchuang">
    	<div class="t-c-bg"></div>
    	<div class="t-c-con">
        	<div class="tc-tit">
            	<h3>上传头像</h3>
                <a href="JavaScript:;" delete=""><img src="${pageContext.request.contextPath}/images/t-c-del.gif" /></a>
                <div style="clear:both;"></div>
            </div>
            <div class="tc-con">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/tc-tu.gif" /></a>
                <button>保存头像</button>
            </div>
        </div>
    </div>-->
    
    <!--底部一块-->
<%@include file="bottom.jsp"%>
</body>
</html>
