<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta  charset=utf-8"/>
<title>成功加入购物车</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhongling2.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">

	
	<!--header-->
    <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="TOP.jsp"%>

	<!--nav-->
    <%@include file="nav.jsp"%>
    
    <!--内容开始-->
    <div class="zl2-cgjr w1200">
    	<div class="zl2-cgjrl f-l">
        	<h3>请添加商品到购物车！</h3>
            <p>商品数量有限，请您尽快下单并付款！</p>
        </div>
        <div class="zl2-cgjrr f-l">
        	<a href="${pageContext.request.contextPath}/ai.com" class="zl2-goto">继续购物</a>
       <%--     <p>您还可以<a href="JavaScript:;"></a></p>--%>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <!--底部一块-->
    <%@include file="bottom.jsp"%>
</body>
</html>
