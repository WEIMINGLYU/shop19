<%--
  Created by IntelliJ IDEA.
  User: Ashley
  Date: 2019/4/3
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>header</title>
<%--<script type="text/javascript">
    $(function(){
      $("#close").click(function () {
           $.ajax({
               url:"${pageContext.request.contextPath}/user/closeIndex.do",
           })
      })
    })
</script>--%>
</head>
<body>
<div class="zl-header">
    <div class="zl-hd w1200">
        <c:if test="${sessionScope.user==null}">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购，请<a href="${pageContext.request.contextPath}/user/doLogin.do">【登录】</a>  <a href="${pageContext.request.contextPath}/user/registerPage.do">【免费注册】</a>
        </p>
        </c:if>
        <c:if test="${sessionScope.user!=null}">
            <p class="hd-p1 f-l">
                Hi!您好，${sessionScope.user.username}<a href="${pageContext.request.contextPath}/user/closeIndex.do"  id="close">【退出登录】</a>
            </p>
        </c:if>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/user/personal.do">返回首页 (个人中心)</a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/showCart.do">我的购物车</a><span>|</span>
            <a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=1">我的订单</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>
</body>
</html>
