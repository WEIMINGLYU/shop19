<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset=utf-8" />
<title>爱商城首页</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/zhonglingxm2.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/zhonglin.js"></script>
<script type="text/javascript" src="js/zhongling2.js"></script>
</head>

<body id="top">

	<!--header-->
    <%@include file="header.jsp"%>
	
    <!--logo search weweima-->
   <%@include file="TOP.jsp"%>

	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie f-l">
            	<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
                <div class="kuaijie-box">
                    <c:forEach items="${allCAndCs}" var="category" begin="0" end="5">
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${category.cid}&pageNow=1">${category.cname}</a></dt>
                            <dd>
                            	<a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${category.categorysecondExtList[0].csid}&pageNow=1">${category.categorysecondExtList[0].csname}</a>
                            	<a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${category.categorysecondExtList[1].csid}&pageNow=1">${category.categorysecondExtList[1].csname}</a>
                            	<a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${category.categorysecondExtList[2].csid}&pageNow=1">${category.categorysecondExtList[2].csname}</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2" style="display:inline-block">
                            	<dt><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${category.cid}&pageNow=1">${category.cname}</a></dt>
                                <dd>
                                    <c:forEach items="${category.categorysecondExtList}" var="categorysecond">
                                   	<a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${categorysecond.csid}&pageNow=1">${categorysecond.csname}</a>
                                    </c:forEach>

                                </dd>
                            </dl>

                           <div style="clear:both;"></div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <ul class="nav-font f-l">
                <c:forEach items="${allCAndCs}" var="category" begin="0" end="7" step="1" varStatus="vs">
            	<li><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${category.cid}&pageNow=1">${category.cname}</a>
                <c:if test="${vs.last}"><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></c:if></li>
                </c:forEach>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--banner-->
    <div class="banner">
    	<ul class="ban-ul1">
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        </ul>
        <div class="ban-box w1200">
        	<ol class="ban-ol1">
            	<li class="current"></li>
            	<li></li>
            	<li></li>
            	<li></li>
               	<div style="clear:both;"></div>
            </ol>
        </div>
    </div>
    
    <!--热门推荐-->
    <div class="zl-tuijian w1200">
    	<div class="tuijian-left f-l">
        	<img src="${pageContext.request.contextPath}/images/zl2-14.png" />
        </div>
    	<ul class="tuijian-right f-l">
        	<li>
            	<div class="li-box li-box1">
                	<a href="JavaScript:;" class="li-a1">锦尚世家</a>
                	<a href="JavaScript:;" class="li-a2">锦绣花苑　传承世家</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box2">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box3">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box4">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box5">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box6">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box7">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box8">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
    
    <!--1F  在线商城-->
    <!--1F  在线商城-->
    <div class="zl-info w1200">
        <div class="zl-title1">
            <h3 class="title1-h3 f-l">1F  ${allCAndCs[0].cname}</h3>
            <ul class="title1-ul1 f-r">

                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
            <div class="zl-con-left f-l">
                <div class="zl-tu">
                    <img src="${pageContext.request.contextPath}/images/zl2-33.gif" class="zl-img" />
                </div>
                <p class="zl-lp">
                    黑色星期五</br>
                    优惠力度大
                </p>
                <ul class="zl-lhover">
                    <c:forEach items="${allCAndCs[0].categorysecondExtList}" var="cs">
                        <li><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>
                        </c:forEach>
                        <div style="clear:both;"></div>
                </ul>
            </div>
            <div class="zl-con-right f-l">
                <ul class="zl-rul1 lihover">
                     <c:forEach items="${categoryExt1.categorysecondExtList}" var="cs">
                         <c:forEach items="${cs.productList}" var="pro">

                    <li>

                       <div class="sy-tu1">

                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img  src="http://localhost/shop10_back/${pro.image}" width="200" height="140"/></a>
                           <p>商品价格：￥${pro.shop_price}</p>
                       </div>
                        <div class="sy-tit1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}">${pro.pname}</a>
                        </div>
                        <div class="sy-tit2">
                            <p>${pro.pdesc}</p>
                        </div>
                    </li>
                         </c:forEach>
                        </c:forEach>

                        <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>


                       <!--2F  餐饮娱乐-->
                       <div class="zl-info w1200">
                           <div class="zl-title1" style="border-color:#FF9A02;">
                               <h3 class="title1-h3 f-l">2F   ${allCAndCs[1].cname}</h3>
                               <ul class="title1-ul1 title1-ul2 f-r">

                                   <div style="clear:both;"></div>
                               </ul>
                               <div style="clear:both;"></div>
                           </div>
                           <div class="zl-con">
                               <div class="zl-con-left f-l" style="background:#FBEAD0;">
                                   <div class="zl-tu">
                                       <img src="images/zl2-34.gif" class="zl-img" />
                                   </div>
                                   <p class="zl-lp" style="color:#FF9901;">
                                       周末，嗨起来</br>
                                       兄弟，躁起来
                                   </p>
                                   <ul class="zl-lhover" style=" background:#FF9A02;">
                                       <c:forEach items="${allCAndCs[1].categorysecondExtList}" var="cs">
                                           <li><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>
                                       </c:forEach>

                                       <div style="clear:both;"></div>
                                   </ul>
                               </div>
                               <div class="zl-con-right f-l">
                                   <ul class="zl-rul1 lihover">


                                       <c:forEach items="${categoryExt2.categorysecondExtList}" var="cs">
                                           <c:forEach items="${cs.productList}" var="pro">

                                               <li>
                                                   <div class="sy-tu1">
                                                       <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img src="http://localhost/shop10_back/${pro.image}" width="100" height="130" /></a>
                                                       <p>商品价格：￥${pro.shop_price}</p>
                                                   </div>
                                                   <div class="sy-tit1">
                                                       <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}">${pro.pname}</a>
                                                   </div>
                                                   <div class="sy-tit2">
                                                       <p>${pro.pdesc}</p>
                                                   </div>
                                               </li>
                                           </c:forEach>
                                       </c:forEach>


                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
                      </div>
    
    <!--3F  家政服务-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#73B42D;">
        	<h3 class="title1-h3 f-l">3F   ${allCAndCs[2].cname}</h3>
            <ul class="title1-ul1 title1-ul3 f-r">
                <c:forEach items="${allCAndCs[2].categorysecondExtList}" var="cs" varStatus="vs">
            	<li ${vs.first?"class='current'":"" }><a href="JavaScript:;">${cs.csname}</a></li>
                </c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F4FCEF;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-35.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#73B42D;">
                    清洁维修搬家？</br>
                    服务应有尽有
                </p>
                <ul class="zl-lhover" style=" background:#73B52D;">
                    <c:forEach items="${allCAndCs[2].categorysecondExtList}" var="cs">
                        <li><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>
                    </c:forEach>

                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
                <c:forEach items="${categoryExt3.categorysecondExtList}" var="cs">
            	<ul class="zl-rul1 lihover">

                        <c:forEach items="${cs.productList}" var="pro">

                            <li>
                                <div class="sy-tu1">
                                    <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img src="http://localhost/shop10_back/${pro.image}"  /></a>
                                    <p>商品价格：￥${pro.shop_price}</p>
                                </div>
                                <div class="sy-tit1">
                                    <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}">${pro.pname}</a>
                                </div>
                                <div class="sy-tit2">
                                    <p>${pro.pdesc}</p>
                                </div>
                            </li>






                    <div style="clear:both;"></div>
                        </c:forEach>
                </ul>
                </c:forEach>
                <c:forEach items="${categoryExt3.categorysecondExtList}" var="cs">
            	<ul class="zl-rul1 lihover">

                   <c:forEach items="${cs.productList}" var="pro">
                	<li>
                    	<div class="sy-tu1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img src="http://localhost/shop10_back/${pro.image}"  /></a>
                            <p>商品价格：￥${pro.shop_price}</p>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">${pro.pname}</a>
                        </div>
                        <div class="sy-tit2">
                            <p>${pro.pdesc}</p>
                        </div>
                    </li>
                   </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
                </c:forEach>
             </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--4F  美容美发-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#BC2B51;">
        	<h3 class="title1-h3 f-l">4F   ${allCAndCs[3].cname}</h3>
            <ul class="title1-ul1 title1-ul4 f-r">
                <c:forEach items="${allCAndCs[3].categorysecondExtList}" var="cs" varStatus="vs">
                    <li ${vs.first?"class='current'":"" }><a href="JavaScript:;">${cs.csname}</a></li>

                </c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F8E9EE;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-36.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#BB2B51;">
                    清洁维修搬家？</br>
                    服务应有尽有
                </p>
                <ul class="zl-lhover" style=" background:#BC2B51;">
                    <c:forEach items="${allCAndCs[3].categorysecondExtList}" var="cs">
                        <li class="current"><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>

                    </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">




<c:forEach items="${categoryExt4.categorysecondExtList}" var="cs">

            	<ul class="zl-rul1 lihover">
                    <c:forEach items="${cs.productList}" var="pro">
                	<li>
                    	<div class="sy-tu1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img src="http://localhost/shop10_back/${pro.image}"  /></a>
                            <p>商品价格：￥${pro.shop_price}</p>
                        </div>
                        <div class="sy-tit1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}">${pro.pname}</a>

                        </div>
                        <div class="sy-tit2">
                            <p>${pro.pdesc}</p>
                        </div>
                    </li>

    </c:forEach>
                </ul>
</c:forEach>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--5F  教育培训-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#35A3D6;">
        	<h3 class="title1-h3 f-l">5F   ${allCAndCs[4].cname}</h3>
            <ul class="title1-ul1 title1-ul5 f-r">
                <c:forEach items="${allCAndCs[4].categorysecondExtList}" var="cs" varStatus="vs">
                    <li ${vs.first?"class='current'":"" }><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>

                </c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#E3F1FB;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-37.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#35A3D5;">
                    知识，从来都是</br>
                    时尚的！
                </p>
                <ul class="zl-lhover" style=" background:#35A3D6;">
                    <c:forEach items="${allCAndCs[4].categorysecondExtList}" var="cs">
                        <li><a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.csid}&pageNow=1">${cs.csname}</a></li>

                    </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
             <c:forEach items="${categoryExt5.categorysecondExtList}" var="cs">
            	<ul class="zl-rul1 lihover">
                 <c:forEach items="${cs.productList}" var="pro">
                	<li>
                    	<div class="sy-tu1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}"><img src="http://localhost/shop10_back/${pro.image}"  /></a>
                            <p>商品价格：￥${pro.shop_price}</p>
                        </div>
                        <div class="sy-tit1">
                            <a href="${pageContext.request.contextPath}/product/findProductByPid.do?pid=${pro.pid}">${pro.pname}</a>

                        </div>
                        <div class="sy-tit2">
                            <p>${pro.pdesc}</p>

                        </div>
                    </li>

                 </c:forEach>
                   <div style="clear:both;"></div>
                 </ul>
             </c:forEach>

            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--6F  汽车房产-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#8F7453;">
        	<h3 class="title1-h3 f-l">6F   ${allCAndCs[5].cname}</h3>
            <ul class="title1-ul1 title1-ul6 f-r">
            	<li class="current"><a href="JavaScript:;">奔驰4s店</a></li>
            	<li><a href="JavaScript:;">宝马4s店</a></li>
            	<li><a href="JavaScript:;">大众4s店</a></li>
            	<li><a href="JavaScript:;">别克4s店</a></li>
            	<li><a href="JavaScript:;">锦尚世家</a></li>
            	<li><a href="JavaScript:;">富丽花园</a></li>
            	<li><a href="JavaScript:;">中天房产</a></li>
            	<li><a href="JavaScript:;">华滨嘉苑</a></li>
            	<li><a href="JavaScript:;">中鹏地产</a></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F8EEE2;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-38.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#8F7353;">
                    速度、卓越</br>
                    你都会拥有
                </p>
                <ul class="zl-lhover" style=" background:#8F7453;">
                	<li><a href="#">奔驰4s店</a></li>
                	<li><a href="#">宝马4s店</a></li>
                	<li><a href="#">大众4s店</a></li>
                	<li><a href="#">别克4s店</a></li>
                	<li><a href="#">锦尚世家</a></li>
                	<li><a href="#">富丽花园</a></li>  
                	<li><a href="#">中天房产</a></li>  
                	<li><a href="#">华滨嘉苑</a></li> 
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-71.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-74.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-75.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-72.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-73.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--7F  家居建材-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#C4583C;">
        	<h3 class="title1-h3 f-l">7F   ${allCAndCs[6].cname}</h3>
            <ul class="title1-ul1 title1-ul7 f-r">
            	<li class="current"><a href="JavaScript:;">厨房家具</a></li>
            	<li><a href="JavaScript:;">地板瓷砖</a></li>
            	<li><a href="JavaScript:;">门窗吊顶</a></li>
            	<li><a href="JavaScript:;">家电灶具</a></li>
            	<li><a href="JavaScript:;">墙面灯饰</a></li>
            	<li><a href="JavaScript:;">五金电料</a></li>
            	<li><a href="JavaScript:;">墙纸涂料</a></li>
            	<li><a href="JavaScript:;">卫浴洁具</a></li>
            	<li><a href="JavaScript:;">瓷砖门锁</a></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F8EEE2;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-39.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#C3573B;">
                    人生很短</br>
                    家最重要
                </p>
                <ul class="zl-lhover" style=" background:#C4583C;">
                	<li><a href="#">奔驰4s店</a></li>
                	<li><a href="#">宝马4s店</a></li>
                	<li><a href="#">大众4s店</a></li>
                	<li><a href="#">别克4s店</a></li>
                	<li><a href="#">锦尚世家</a></li>
                	<li><a href="#">富丽花园</a></li>  
                	<li><a href="#">中天房产</a></li>  
                	<li><a href="#">华滨嘉苑</a></li> 
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--8F  二手市场-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#5B8050;">
        	<h3 class="title1-h3 f-l">8F   ${allCAndCs[7].cname}</h3>
            <ul class="title1-ul1 title1-ul8 f-r">
            	<li class="current"><a href="JavaScript:;">床垫</a></li>
            	<li><a href="JavaScript:;">床</a></li>
            	<li><a href="JavaScript:;">橱柜</a></li>
            	<li><a href="JavaScript:;">锅</a></li>
            	<li><a href="JavaScript:;">厨具</a></li>
            	<li><a href="JavaScript:;">餐桌</a></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F0F6F2;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-40.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#5B7F4F;">
                    只有想不到</br>
                    没有找不到
                </p>
                <ul class="zl-lhover" style=" background:#5B8050;">
                	<li><a href="#">苹果专区</a></li>
                	<li><a href="#">奢侈大牌</a></li>
                	<li><a href="#">二手汽车</a></li>
                	<li><a href="#">二手家具</a></li>
                	<li><a href="#">二手电脑</a></li>
                	<li><a href="#">二手房屋</a></li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-79.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-80.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-77.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-76.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-78.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--9F  时尚旅游-->
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#EF8008;">
        	<h3 class="title1-h3 f-l">9F   ${allCAndCs[8].cname}</h3>
            <ul class="title1-ul1 title1-ul9 f-r">
            	<li class="current"><a href="JavaScript:;">床垫</a></li>
            	<li><a href="JavaScript:;">床</a></li>
            	<li><a href="JavaScript:;">橱柜</a></li>
            	<li><a href="JavaScript:;">锅</a></li>
            	<li><a href="JavaScript:;">厨具</a></li>
            	<li><a href="JavaScript:;">餐桌</a></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#F8EEE2;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-41.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#EF7F07;">
                    你差一场说走</br>
                    就走的旅行
                </p>
                <ul class="zl-lhover" style=" background:#EF8008;">
                	<li><a href="#">天下第一雄关</a></li>
                	<li><a href="#">七一冰川</a></li>
                	<li><a href="#">方特欢乐世界</a></li>
                	<li><a href="#">魏晋墓</a></li>
                	<li><a href="#">长城第一墩</a></li>
                	<li><a href="#">中华孔雀苑</a></li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            	<ul class="zl-rul1 lihover">
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-82.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">海上音乐吉他培训中心</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-83.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">CASTER舞蹈教室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-84.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">穷画舍</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-85.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">南艺画室</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                	<li>
                    	<div class="sy-tu1">
                        	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-81.png" /></a>
                        </div>
                        <div class="sy-tit1">
                        	<a href="#">咖啡爱上钢琴课</a>
                        </div>
                        <div class="sy-tit2">
                        	<p><a href="#">都市新大新特色豆米锅</a></p>
                            <p>地址：渝中区石油路174号龙湖时代天A馆L3-20</p>
                            <p>电话：023-63310530</p>
                        </div>
                    </li>
                    <div style="clear:both;"></div>
                </ul>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--底部一块-->
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">购物流程</a>
                    	<a href="6-1服务协议.html">在线支付</a>
                    	<a href="6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">货到付款区域</a>
                    	<a href="6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">订购流程</a>
                    	<a href="6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">售后服务保障</a>
                    	<a href="6-1服务协议.html">退换货政策总则</a>
                    	<a href="6-1服务协议.html">自营商品退换细则</a>
                    </dd>
                </dl>
                <div style="clear:both;"></div>
            </div>
        	<div class="ft-if2-right f-r">
            	<h3>400-2298-223</h3>
                <p>周一至周日  9:00-24:00</p>
                <p>（仅收市话费）</p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="footer-info3 w1200">
        	<p>
                <a href="#">免责条款</a><span>|</span>
                <a href="#">隐私保护</a><span>|</span>
                <a href="#">咨询热点</a><span>|</span>
                <a href="#">联系我们</a><span>|</span>
                <a href="#">公司简介</a>
            </p>
        	<p>
            	<a href="#">沪ICP备13044278号</a><span>|</span>
                <a href="#">合字B1.B2-20130004</a><span>|</span>
                <a href="#">营业执照</a><span>|</span>
                <a href="#">互联网药品信息服务资格证</a><span>|</span>
                <a href="#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
    
    <!--固定右侧-->
    <ul class="youce">
    	<li class="li1">
        	<a href="${pageContext.request.contextPath}/ai.com" class="li1-tu1"><img src="${pageContext.request.contextPath}/images/zl2-94.png" /></a>
            <a href="${pageContext.request.contextPath}/ai.com" class="li1-zi1">返回首页</a>
        </li>
        <li class="li2">
        	<a href="${pageContext.request.contextPath}/cart/showCart.do"><img src="${pageContext.request.contextPath}/images/zl2-95.png" />购</br>物</br>车</a>
        </li>
        <li class="li3">
        	<a href="#" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-96.png" /></a>
            <a href="#" class="li1-zi2">我关注的品牌</a>
        </li>
        <li class="li3">
        	<a href="浏览记录.html" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-97.png" /></a>
            <a href="浏览记录.html" class="li1-zi2">我看过的</a>
        </li>
       <%-- <li class="li4">
        	<a href="JavaScript:;" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-98.gif" /></a>
            <div class="li4-ewm">
            	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-101.gif" /></a>
                <p>扫一扫</p>
            </div>
        </li>--%>
        <li class="li3 li5">
        	<a href="#top" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-99.gif" /></a>
            <a href="#top" class="li1-zi2">返回顶部</a>
        </li>
    </ul>
    

</body>
</html>
