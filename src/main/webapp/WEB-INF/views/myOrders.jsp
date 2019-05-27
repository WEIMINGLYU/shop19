<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset=utf-8" />
<title>我的订单</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        function confirmProduct(oid) {
            $.ajax({
                url:"${pageContext.request.contextPath}/order/confirmProduct.do",
                data:{
                    oid:oid,

                },
                dataType:"text",
                success:function (data) {
                       if (data=="ok"){
                           alert("收货成功");
                           window.location.reload();
                       }
                }
            })
        }
    </script>
</head>

<body style="position:relative;">

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
            	<h3>我的订单</h3>
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
    	<div class="order-right f-r">
        	<div class="order-hd">
            	<dl class="f-l">
                	<dt>
                    	<a href="#"><img src="${pageContext.request.contextPath}/images/data-tu2.gif" /></a>
                    </dt>
                    <dd>
                    	<h3><a href="#">RH了</a></h3>
                        <p>zhao601884596</p>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <div class="ord-dai f-l">
                	<a href="${pageContext.request.contextPath}/order/myOrders?state=0&pageNow=1"><p>待付款<span>${pageBeanForOrder.state0}</span></p></a>
                	<a href="${pageContext.request.contextPath}/order/myOrders?state=1&pageNow=1"><p>待发货<span>${pageBeanForOrder.state1}</span></p></a>
                	<a href="${pageContext.request.contextPath}/order/myOrders?state=2&pageNow=1"><p>待收货<span>${pageBeanForOrder.state2}</span></p></a>
                	<a href="${pageContext.request.contextPath}/order/myOrders?state=3&pageNow=1"><p>已完成<span>${pageBeanForOrder.state3}</span></p></a>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="order-md">
            	<div class="md-tit">
                	<h3>我的订单</h3>
                </div>
                <div class="md-hd">
                	<P class="md-p1"><span>订单编号</span></P>
                    <p class="md-p2">商品信息</p>
                    <p class="md-p3"></p>
                    <p class="md-p4">单价（元）</p>
                    <p class="md-p5">金额（元）</p>
                    <p class="md-p6">操作</p>
                </div>
                <c:forEach items="${pageBeanForOrder.list}" var="orderExt">

                <div class="md-info">

                	<div class="dai">
                    <span>订单号: ${orderExt.oid} </span>
                        ${orderExt.state==0?"<span>待付款</span>":orderExt.state==1?"<span>待发货</span>":orderExt.state==2?"<span>待收货</span>":orderExt.state==3?"已完成":""}
                    </div>
                    <c:forEach items="${orderExt.orderitemExtList}" var="orderitem" varStatus="vs">
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>

                                <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${orderitem.product.pid}" class="f-l"><img src="http://localhost/shop10_back/${orderitem.product.image}" width="82px" height="82px" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>${orderitem.product.pname}</p>
                                <span>X ${orderitem.count}</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1"><br /></P>
                            <p class="d-r-p2">¥${orderitem.product.shop_price}</p>
                            <p class="d-r-p3">¥${orderitem.subtotal}</p>
                           <c:if test="${vs.count==1}"> <p class="d-r-p4"><a href="#">订单详情</a><br /><br />
                                <c:if test="${orderExt.state==0}" >
                             <a href="${pageContext.request.contextPath}/order/pay.do?oid=${orderExt.oid}">去付款</a>
                                </c:if>
                                <c:if test="${orderExt.state==1}" >
                            <a href="#">提醒发货</a>
                                </c:if>
                                <c:if test="${orderExt.state==2}" >
                                    <a href="JavaScript:;" onclick="confirmProduct(${orderExt.oid})">确认收货</a>
                                </c:if>
                                <c:if test="${orderExt.state==3}" >
                                    <a href="#" >已完成</a>
                                </c:if>
                        </p></c:if>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    </c:forEach>
                </div>

                </c:forEach>
                <!--分页-->
               <%-- <c:if test="${pageBeanForOrder.pageCount != null}">--%>
                <div style="display: ${pageBeanForOrder.pageNow ==null||pageBeanForOrder.pageCount<2?"none":""}">
                <div class="paging">
                    <div class="pag-left f-l">
                        <c:if test="${pageBeanForOrder.pageNow > 1}">
                            <a  href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBeanForOrder.pageNow-1 }&state=${pageBeanForOrder.state}" class="about left-r f-l"><</a>
                        </c:if>
                        <ul class="left-m f-l">
                            <c:if test="${ pageBeanForOrder.pageCount>1&& pageBeanForOrder.pageCount!=1}">

                                <li class="${pageBeanForOrder.pageNow==1?"current":"" }">  <a
                                        href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=1&state=${pageBeanForOrder.state}">1</a></li>
                            </c:if>
                            <c:if test="${pageBeanForOrder.pageNow!=1&&pageBeanForOrder.pageNow>4}">
                                <li><a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBeanForOrder.pageNow-2 }&state=${pageBeanForOrder.state}">...</a></li>
                            </c:if>
                            <%--浮动分页--%>
                            <c:if test="${pageBeanForOrder.pageCount<5 && pageBeanForOrder.pageNow<5 && pageBeanForOrder.pageCount!=1}">
                                <c:forEach begin="${2 }" end="${pageBeanForOrder.pageCount<5?pageBeanForOrder.pageCount:pageBeanForOrder.pageCount-1 }" var="j" step="1">
                                    <li class="${pageBeanForOrder.pageNow==j?"current":"" }"> <a
                                            href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${j }&state=${pageBeanForOrder.state}">${j}</a></li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${pageBeanForOrder.pageCount>=5 and pageBeanForOrder.pageNow<=5}">
                                <c:forEach begin="${2 }" end="${5 }" var="j" step="1">
                                    <li class="${pageBeanForOrder.pageNow==j?"current":"" }"> <a
                                            href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${j }&state=${pageBeanForOrder.state}">${j}</a></li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${pageBeanForOrder.pageNow > 5 and pageBeanForOrder.pageNow < pageBeanForOrder.pageCount - 2}">
                                <c:forEach begin="${pageBeanForOrder.pageNow - 2 }" var="i"
                                           end="${pageBeanForOrder.pageNow + 2 }" step="1">
                                    <li class="${pageBeanForOrder.pageNow==i?"current":"" }"> <a
                                            href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${i}&state=${pageBeanForOrder.state}">${i}</a></li>
                                </c:forEach>
                            </c:if>
                            <c:if test="${pageBeanForOrder.pageNow > (pageBeanForOrder.pageCount-3)&&(pageBeanForOrder.pageCount-5)>0&&pageBeanForOrder.pageNow!=4}">
                                <c:forEach begin="${pageBeanForOrder.pageNow -3}" end="${pageBeanForOrder.pageCount-1 }"
                                           step="1" var="i">
                                    <li class="${pageBeanForOrder.pageNow==i?"current":"" }">    <a  href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${i}&state=${pageBeanForOrder.state}">${i}</a></li>
                                </c:forEach>
                            </c:if>
                            <%--最后一页和下一页还有下两页--%>
                            <c:if test="${pageBeanForOrder.pageNow!=pageBeanForOrder.pageCount&&pageBeanForOrder.pageNow<pageBeanForOrder.pageCount-3}">
                                <li><a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBeanForOrder.pageNow+2 }&state=${pageBeanForOrder.state}">...</a></li>
                            </c:if>
                            <c:if test="${pageBeanForOrder.pageCount>5}">
                                <li class="${pageBeanForOrder.pageNow==pageBeanForOrder.pageCount?"current":"" }">
                                    <a  href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBeanForOrder.pageCount }&state=${pageBeanForOrder.state}">${pageBeanForOrder.pageCount}</a></li>
                            </c:if>
                            <div style="clear:both;"></div>
                        </ul>
                        <c:if test="${pageBeanForOrder.pageNow != pageBeanForOrder.pageCount && pageBeanForOrder.pageCount>1}">
                            <a href="${pageContext.request.contextPath}/order/myOrders.do?pageNow=${pageBeanForOrder.pageNow+1 }&state=${pageBeanForOrder.state}" class="about left-l f-l">></a>
                        </c:if>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="pag-right f-l">
                        <form action="${pageContext.request.contextPath}/order/myOrders.do?" method="post">
                            <c:if test="${pageBeanForOrder.pageCount>=2 }">
                                <div class="jump-page f-l">
                                    到第<input type="number" max="${pageBeanForOrder.pageCount}" min="1" id="skipNum"  name="pageNow" value="${pageBeanForOrder.pageNow}" required >页
                                </div>

                                <button class="f-l">确定</button>
                            </c:if>
                        </form>
                        <div style="clear:both;"></div>
                    </div>
                    <div style="clear:both;"></div>
                </div>
                </div>

            </div>
        </div>
        <div style="clear:both;"></div>
    </div>


    <!--底部一块-->
    <%@include file="bottom.jsp"%>
    
    <!--查看物流 弹窗-->
    <div class="view-logistics">
    	<div class="view-bg"></div>
        <div class="view-con">
        	<div class="view-tit">
            	<h3>物流信息</h3>
                <a href="JavaScript:;" guanbi="">
                	<img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                </a>
                <div style="clear:both;"></div>
            </div>
            <div class="view-bd">
            	<ul>
                	<li class="bd-pdl-li after"><span>1</span>2015-08-06　周四　　14:06:53您的订单开始处理</li>
                	<li class="after"><span>2</span>14:08:44您的订单待配货</li>
                	<li><span>3</span>14:16:04您的包裹已出库</li>
                	<li><span>4</span>14:16:03商家正通知快递公司揽件</li>
                	<li><span>5</span>21:47:54【惠州市】圆通速递 广东省惠州市惠东县收件员 已揽件</li>
                	<li class="bd-pdb-li"><span>6</span>22:13:51广东省惠州市惠东县公司 已发出</li>
                    <li class="bd-pdl-li"><span>7</span>2015-08-07　周五　　04:57:33广州转运中心公司 已收入</li>
                	<li><span>8</span>04:58:54广州转运中心公司 已发出</li>
                	<li><span>9</span>2015-08-08周六22:46:43重庆转运中心公司 已收入</li>
                	<li class="bd-pdb-li"><span>10</span>23:01:49【重庆市】重庆转运中心 已发出</li>
                    <li class="bd-pdl-li"><span>11</span>2015-08-09　周日　　00:57:11【重庆市】快件已到达 重庆市南岸区</li>
                	<li><span>12</span>11:14:52重庆市南岸区 已收入</li>
                	<li><span>13</span>11:14:52【重庆市】重庆市南岸区派件员：李天生 13330284757正在为您派件</li>
                	<li class="bd-bd-li"><span>14</span>15:53:14【重庆市】重庆市南岸区公司 已签收 签收人：保安，感谢使用圆通速递，期待再次为您服务</li>
                </ul>
                <p class="sign">您的包裹已被签收！</p>
            </div>
        </div>
    </div>
    
</body>
</html>
