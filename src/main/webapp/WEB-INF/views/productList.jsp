<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta  charset=utf-8" />
<title>搜索列表页(搜索商家)</title>
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
    <script type="text/javascript" >
        $(function () {
            var addCart = $("[name='addCart']");
            addCart.click(function () {
                var pid = $(this).val();
                var count = $(this).parent().prev().children("[name='count']").val();

                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/addCart.do",
                    data:{
                        pid:parseInt(pid),
                        count:count
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="ok"){

                                alert("添加成功");

                        }
                    }
                })
            });


        })
        function addCart(pid) {
            //    添加购物车
            //    获取需要加入的数量
            var count  = $("#count"+pid).text();

        }


    </script>
</head>

<body>

	<!--header-->
  <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
   <%@include file="TOP.jsp"%>

	<!--nav-->
<%@include file="nav.jsp"%>
    
    <!--内容开始-->
    	<!--筛选结果-->
    <div class="screening-results w1200">
    	<p class="tiao">找到共 233 条</p>
    	<div class="results">
        	<p class="re-p1 f-l">
            	全部结果：零食 > <span>品牌：三只松鼠　X　</span>　>
            </p>
            <div class="re-search f-l">
            	<input type="text" placeholder="三只松鼠" class="f-l" />
                <button></button>
                <div style="clear:both;"></div>
            </div>
            <p class="re-p2 f-r">
            	<a href="#">清空筛选条件</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>

        <!--品牌热销-->
    <div class="brand-sales">

        <dl style="border-bottom:none;">
            <dt>${categoryExt.cname}</dt>
            <dd>
                <c:forEach items="${categoryExt.categorysecondExtList}" var="cs">

                <a style="${cs.csid==pageBeanForProduct.csid?"color: green":""}" href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a>

                </c:forEach>
            </dd>
            <div style="clear:both;"></div>
        </dl>
    </div>
    
    <!--内容↓↑-->
    <div class="shop-page-con w1200">
    	<div class="shop-pg-left f-l" style="width:215px">
            <div class="shop-left-buttom" style="margin-top:0;">
            	<div class="sp-tit1">
                    <h3>商品推荐</h3>
                </div>
                <ul class="shop-left-ul">

                <c:forEach items="${hotProduct}" var="hProduct" varStatus="vs">
                    <form action="${pageContext.request.contextPath}/cart/confirmBycaritem?pid=${hProduct.pid}" method="post">
                    <li style=" ${vs.last?"border-bottom:0;":""}">

                        <div class="li-top">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${hProduct.pid}" class="li-top-tu"><img src="http://localhost/shop10_back/${hProduct.image}" height="100" width="100" /></a>
                            <p class="jiage"><span class="sp1">￥${hProduct.shop_price}</span><span class="sp2">￥${hProduct.market_price}</span></p>
                        </div>

                        <p class="miaoshu">${hProduct.pname}</p>

                        <div class="li-md">

                            <div class="md-l f-l">
                           <input type="text" class="md-l-l f-l" name="count" ap="" value="1">
                              <%--  <p  name="count" class="md-l-l f-l" ap="">1</p>--%>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1" type="submit">立即购买</button>

                                <button name="addCart" type="button" value="${hProduct.pid}" class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
                    </form>
                </c:forEach>
                </ul>
            </div>
        </div>
    	<div class="shop-pg-right f-r">
        	<div class="shop-right-cmp" style="margin-top:0;">
            	<ul class="shop-cmp-l f-l">
                	<li class="current"><a href="#">综合 ↓</a></li>
                	<li><a href="#">销量 ↓</a></li>
                	<li><a href="#">新品 ↓</a></li>
                	<li><a href="#">评价 ↓</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div class="shop-cmp-m f-l">
                	<span>价格</span><input type="text" /><span>-</span><input type="text" />
                </div>
                <div class="shop-cmp-r f-l">
                	<ul class="f-l">
                    	<li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>包邮</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>进口</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>仅显示有货</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满赠</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满减</span>
                        </li>
                        <div style="clear:both;"></div>
                    </ul>
                    <button>确定</button>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="shop-right-con">
            	<ul class="shop-ul-tu shop-ul-tu1">

                   <c:forEach items="${pageBeanForProduct.list}" var="products" varStatus="vs">
                       <form action="${pageContext.request.contextPath}/cart/confirmBycaritem?pid=${products.pid}" method="post">
                    <li  style="${vs.count%4==0||vs.count==8||vs.count==12?"margin-right:0;":""}">
                        <div class="li-top">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${products.pid}" class="li-top-tu"><img src="http://localhost/shop10_back/${products.image}" width="120" height="100" /></a>
                            <p class="jiage"><span class="sp1">￥${products.shop_price}</span><span class="sp2">￥${products.market_price}</span></p>
                        </div>
                        <p class="miaoshu">${products.pname}</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <input type="text" class="md-l-l f-l" name="count" ap="" value="1">
                                <%--<p name="count" id="count" class="md-l-l f-l" ap="" >1</p>--%>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1" type="submit">立即购买 </button>
                                <button class="md-l-btn2" name="addCart" type="button" value="${products.pid}">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
                       </form>
                   </c:forEach>
                    <c:if test="${pageBeanForProduct.pageCount==null}">
                        <h1 style="color: red;font-size: 50px">商品列表为空，请重新查找商品</h1>
                    </c:if>
                    <div style="clear:both;"></div>
                </ul>
                
                <!--分页-->
                <c:if test="${pageBeanForProduct.pageCount >1}">
                <div class="paging">
            	<div class="pag-left f-l">
                    <c:if test="${pageBeanForProduct.pageNow != 1}">
                        <a  href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid}&pageNow=${pageBeanForProduct.pageNow-1 }" class="about left-r f-l"><</a>
                    </c:if>
                    <ul class="left-m f-l">
                        <c:if test="${ pageBeanForProduct.pageCount>1&& pageBeanForProduct.pageCount!=1}">

                         <li class="${pageBeanForProduct.pageNow==1?"current":"" }">  <a
                                 href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid}&pageNow=1">1</a></li>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageNow!=1&&pageBeanForProduct.pageNow>4}">
                            <li><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${pageBeanForProduct.pageNow-2 }">...</a></li>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageCount<=5 && pageBeanForProduct.pageNow<5 && pageBeanForProduct.pageCount!=1}">
                            <c:forEach begin="${2 }" end="${pageBeanForProduct.pageCount-1 }" var="j" step="1">
                              <li class="${pageBeanForProduct.pageNow==j?"current":"" }"> <a
                                        href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${j }">${j}</a></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageCount>=5 and pageBeanForProduct.pageNow<5}">
                            <c:forEach begin="${2 }" end="${5 }" var="j" step="1">
                               <li class="${pageBeanForProduct.pageNow==j?"current":"" }"> <a
                                        href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${j }">${j}</a></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageNow >= 5 and pageBeanForProduct.pageNow < pageBeanForProduct.pageCount - 2}">
                            <c:forEach begin="${pageBeanForProduct.pageNow - 2 }" var="i"
                                       end="${pageBeanForProduct.pageNow + 2 }" step="1">
                              <li class="${pageBeanForProduct.pageNow==i?"current":"" }"> <a
                                        href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${i}">${i}</a></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageNow > (pageBeanForProduct.pageCount-3)&&(pageBeanForProduct.pageCount-3)>0&&pageBeanForProduct.pageNow!=4}">
                            <c:forEach begin="${pageBeanForProduct.pageNow -3}" end="${pageBeanForProduct.pageCount-1 }"
                                       step="1" var="i">
                            <li class="${pageBeanForProduct.pageNow==i?"current":"" }">    <a  href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${i}">${i}</a></li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageNow!=pageBeanForProduct.pageCount&&pageBeanForProduct.pageNow<pageBeanForProduct.pageCount-3}">
                        <li><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${pageBeanForProduct.pageNow+2 }">...</a></li>
                        </c:if>
                        <c:if test="${pageBeanForProduct.pageCount>5}">
                           <li class="${pageBeanForProduct.pageNow==pageBeanForProduct.pageCount?"current":"" }">
                                 <a  href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${pageBeanForProduct.pageCount }">${pageBeanForProduct.pageCount}</a></li>
                        </c:if>
                        <div style="clear:both;"></div>
                    </ul>
                       <c:if test="${pageBeanForProduct.pageNow != pageBeanForProduct.pageCount && pageBeanForProduct.pageCount>1}">
                    <a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }&pageNow=${pageBeanForProduct.pageNow+1 }" class="about left-l f-l">></a>
                       </c:if>
    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
                    <form action="${pageContext.request.contextPath}/product/findProducts.do?cid=${pageBeanForProduct.cid}&csid=${pageBeanForProduct.csid }" method="post">
                  <c:if test="${pageBeanForProduct.pageCount>=2 }">
                	<div class="jump-page f-l">
                        到第<input type="number" max="${pageBeanForProduct.pageCount}" min="${pageBeanForProduct.pageNow>0}" id="skipNum"  name="pageNow" value="${pageBeanForProduct.pageNow}" required >页
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
        <div style="clear:both;"></div>
    </div>
    </c:if>
    <!--底部一块-->
    <%@include file="bottom.jsp"%>
    
</body>
</html>
