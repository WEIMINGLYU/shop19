<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset=utf-8" />
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <style type="text/css">
        input[type=number] {
            -moz-appearance:textfield;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;

        }
    </style>
    <script type="text/javascript">
        function endOrder() {
            numberCount();
        }
       function numberCount(){
          var count =  $("[name='numberCount']").val();
           if(isNaN(count)){
                return;
          }
           if(count < 1 || count > 99){
               alert("商品数量必须大于0");
               $(this).val(1);

               return;
           }

       }

        /*清空购物车*/
        function clearCart() {
            if(window.confirm("确认清空购物车？")){

            $.ajax({
                url:"${pageContext.request.contextPath}/cart/clearCart.do",
                dataType:"text",
                success:function (data) {
                    if(data=="ok"){
                     alert("清空成功");
                     $("#all").remove();
                     getSubTotal ()
                    }
                }
            })
            }else {
                return;
            }
        }
        /*删除购物项*/
        function delItem(pid) {
            if (window.confirm("确认删除吗？")){
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/delItem.do",
                    data:{
                        pid:pid
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="ok"){
                            alert("删除成功")
                            $("#p"+pid).remove()
                            getSubTotal ()
                        }
                    }
                })
            }
        }

        function changeCount(pid,count){

               $.ajax({
                   url:"${pageContext.request.contextPath}/cart/changeCount.do",
                   data:{
                       pid:pid,
                       count:count
                   },
                   dataType:"text",
                   success:function (data) {

                               $("#total").text(data);

                   }
               })
        }
        function getSubTotal () {
            var subTotal = $("[name='subTotal']");
            var total = 0.0;
            subTotal.each(function () {
                total = total + parseFloat($(this).text());
              });
            $("#total").text(total)
        }
        $(function () {
            $("[name='left']").click(function () {
             var   pid = $(this).next().prop("id");
              var  count=$(this).next().val();

                changeCount(pid,count);

               /* getSubTotal ()*/
            });
            $("[name='right']").click(function () {
              var  pid = $(this).prev().prop("id");
              var  count=$(this).prev().val();

                changeCount(pid,count);
               /* getSubTotal ()*/
            });
            $("[name='numberCount']").change(function () {

                var  pid = $(this).prop("id");
                var count = $("[name='numberCount']").val();
                if (count<1||isNaN(count)){
                    alert("数量为非法字符");
                    return;
                }
                var dj = $(this).parent().siblings(".mid-dj").children('span').text();
                $(this).parent().siblings(".mid-je").children('span').text(dj*count);
                changeCount(pid,count);
               /* getSubTotal ()*/
            })

        })
    </script>
</head>

<body style="position:relative;">

	<!--header-->
    <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
   <%@include file="TOP.jsp"%>

    
    <!--内容开始-->
    <div class="cart-content w1200">
    	<ul class="cart-tit-nav">

        	<li class="current"><a href="#">全部商品  </a></li>

            <div style="clear:both;"></div>
        </ul>
        <div class="cart-con-tit">
        	<p class="p1">
            	<input type="checkbox" value="" name="hobby"></input>
				<span>全选</span>
            </p>
            <p class="p2">商品信息</p>
            <p class="p3"></p>
            <p class="p4">数量</p>
            <p class="p5">单价（元）</p>
            <p class="p6">金额（元）</p>
            <p class="p7">操作</p>
        </div>
        <div id="all">
        <c:forEach items="${cart.cartItems}" var="item">

        <div class="cart-con-info" id="p${item.product.pid}">
        	<%--<div class="info-top">
            	<input type="checkbox" value="" name="hobby"></input>
				<span>商家：向东服饰专卖店</span>
            </div>--%>
            <div class="info-mid">
            	<input type="checkbox" value="" name="hobby" class="mid-ipt f-l"></input>
                <div class="mid-tu f-l">
                	<a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${item.product.pid}"><img src="http://localhost/shop10_back/${item.product.image}" width="75" height="70"/></a>
                </div>
                <div class="mid-font f-l">
                	<a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${item.product.pid}" style="width: 280px">${item.product.pname}</a>
                    <span>满赠</span>
                </div>

                <div class="mid-sl f-l" style="height: 34px;width: 110px;">
                	<a href="JavaScript:;" name="left" class="sl-left">-</a>
                    <input type="number" onchange="return numberCount()" id="${item.product.pid}" name="numberCount" required min="1" max="99"  value="${item.count}" />
                    <a href="JavaScript:;" name="right" class="sl-right">+</a>
                </div>
                <p class="mid-dj f-l">¥ <span>${item.product.shop_price}</span></p>
                <p class="mid-je f-l">¥ <span  name="subTotal" >${item.subTotal}</span></p>

                <div class="mid-chaozuo f-l">
                	<a href="#">移入收藏夹</a>
                    <a href="JavaScript:;" onclick="delItem(${item.product.pid})">删除</a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>

        </c:forEach>
        </div>
       	<div class="cart-con-footer">
        	<div class="quanxuan f-l">
            	<input type="checkbox" value="" name="hobby"></input>
                <span>全选</span>
                <a href="JavaScript:;" onclick="clearCart()">清空购物车</a>
                <a href="#">加入收藏夹</a>
                <p>（此处始终在屏幕下方）</p>
            </div>
            <div class="jiesuan f-r">
            	<div class="jshj f-l">
                	<p>合计（不含运费）</p>
                	<p class="jshj-p2">
                    	￥：<span id="total">${cart.total}</span>
                    </p>
                </div>
            	<a href="${pageContext.request.contextPath}/cart/confirmOrder.do" onclick="return endOrder()" class="js-a1 f-l">结算</a>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>

    <!--底部一块-->
   <%@include file="bottom.jsp"%>
</body>
</html>
