<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta  charset=utf-8" />
<title>确认订单</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <style type="text/css">
        .orderleft{font-size: 20px;width: 100px;text-align: left;color: #7b7b7b}
        .orderright{width: 500px;hight:40px;font-size: 18px}
    </style>
</head>

<body style="position:relative;">

	<!--header-->
  <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="TOP.jsp"%>

    
    <!--内容开始-->
    <form action="${pageContext.request.contextPath}/order/creatOrder.do" method="post">
    <div class="payment-interface w1200">

    	<div class="pay-info">
        	<div class="info-tit">
            	<h3>选择收货地址</h3>
            </div>

              <table cellpadding="10px" cellspacing="15px">
                  <tr >
                      <td class="orderleft">收件人:</td>
                    <td>  <input type="text" name="name" size="50px" value="${user.name}" class="orderright" required/></td>
                      <input type="hidden" name="uid"  value="${user.uid}"/>
                  </tr>
                  <tr>
                      <td class="orderleft">电话:</td>
                      <td><input type="text" name="phone" size="50px" class="orderright" value="${user.phone}" required/> </td>
                  </tr>
                  <tr>
                      <td class="orderleft">地址:</td>
                      <td><input type="text" name="addr" size="50px" class="orderright" value="${user.addr}" required /></td>
                  </tr>

              </table>

        </div>
        <div class="pay-info">
        	<div class="info-tit" style="border-bottom:0;">
            	<h3>订单信息</h3>
            </div>
        </div>
        <div class="cart-con-info">
        	<div class="cart-con-tit" style="margin:20px 0 5px;">
                <p class="p1" style="width:145px;"></p>

                <p class="p3" style="width:400px;"></p>
                <p class="p4" style="width:130px;">数量</p>
                <p class="p8" style="width:75px;">运费</p>
                <p class="p5">单价（元）</p>
                <p class="p6" style="width:173px;">金额（元）</p>
                <p class="p7">配送方式</p>
            </div>
            <c:if test="${sessionScope.cart!=null}">
            <%--订单项--%>
            <c:forEach items="${sessionScope.cart.cartItems}" var="cartItem">
            <div class="info-mid">
                <div class="mid-tu f-l">
                	<a href="#"><img src="http://localhost/shop10_back/${cartItem.product.image}" width="80px" height="100" /></a>
                </div>
                <div class="mid-font f-l" style="margin-right:380px;">
                	<a href="#" style="width: 90px">${cartItem.product.pname}<br /></a>
                </div>

                <div class="mid-sl f-l" style="margin:10px 110px 0px 0px;">

                    <span >${cartItem.count}</span>

                </div>
                <p class="mid-yunfei f-l">¥ 0.00</p>
                <p class="mid-dj f-l">¥${cartItem.product.shop_price}</p>
                <p class="mid-je f-l" style="margin:10px 50px 0px 0px;">¥ ${cartItem.subTotal}</p>
                <div class="mid-chaozuo f-l">
                	<select>
                    	<option>送货上门</option>
                    	<option>快递包邮</option>
                    </select>
                </div>
                <div style="clear:both;"></div>
            </div>
            </c:forEach>
            <div class="info-heji">
                <p class="f-r">店铺合计(含运费)：<span>¥${cart.total}</span></p>

            </div>
            <div class="info-tijiao">
                <input type="hidden" name="total" value="${cart.total}"/>
            	<p class="p1">实付款：<span>¥${cart.total}</span></p>
                <%--<c:if test="${cart}"--%>
                <button class="btn">提交订单</button>
            </div>

        </div>

    </div>
    </form>
    </c:if>

    <!--底部一块-->
    <%@include file="bottom.jsp"%>
    

</body>
</html>
