<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付成功</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">

	<!--header-->
    <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="TOP.jsp"%>
    
    <!--内容开始-->
    <div class="payment w1200">
    	<div class="payment-hd">
        	<h3 class="success">支付成功</h3>
        </div>
        <c:forEach items="${orderExt.orderitemExtList}" var="orderitem">
        <div class="payment-bd">
        	<dl class="dl-hd">
            	<dt><a href="#"><img src="http://localhost/shop10_back/${orderitem.product.image}" width="123px" height="122px" /></a></dt>
                <dd>
                	<h3><a href="#">${orderitem.product.pname}</a></h3>
                    <P></P>
                </dd>
                <div style="clear:both;"></div>
            </dl>
            <ul class="ul-bd">
            	<li><span>包邮</span><p></p></li>

            	<li><span>价格</span><p><i>¥ ${orderitem.subtotal}</i></p></li>

            	<li><span>收货信息</span><p>${orderExt.addr}，${orderExt.name}，${orderExt.phone}</p></li>
            	<li><span>成交时间</span><p>  <fmt:formatDate value="${orderExt.ordertime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></p></li>
            	<li><span>订单号</span><p>${orderExt.oid}</p></li>

            </ul>
        </div>
        </c:forEach>
        <div class="payment-ft">
        	<a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=1&uid=${user.uid}"><button class="btn2">我的订单</button></a>
        </div>
    </div>
    
    <!--底部一块-->
    <%@include file="bottom.jsp"%>
</body>
</html>
