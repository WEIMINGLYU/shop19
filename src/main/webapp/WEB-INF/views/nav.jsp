<%--
  Created by IntelliJ IDEA.
  User: Ashley
  Date: 2019/4/10
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie yjp-hover1 f-l">
            <a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
            <p>${jedis}</p>
            <div class="kuaijie-box yjp-show1" style="display:none;">
                <c:forEach items="${allCAndCs}" var="categoryExt">
                    <div class="kuaijie-info">
                        <dl class="kj-dl1">
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${categoryExt.cid}&pageNow=1">${categoryExt.cname}</a></dt>
                            <dd>
                                <a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${categoryExt.categorysecondExtList[0].csid}&pageNow=1">${categoryExt.categorysecondExtList[0].csname}</a><span>|</span>
                                <a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${categoryExt.categorysecondExtList[1].csid}&pageNow=1">${categoryExt.categorysecondExtList[1].csname}</a><span>|</span>
                                <a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${categoryExt.categorysecondExtList[2].csid}&pageNow=1">${categoryExt.categorysecondExtList[2].csname}</a>
                            </dd>
                        </dl>

                        <div class="kuaijie-con">
                            <dl class="kj-dl2">
                                <dt><a href="${pageContext.request.contextPath}/product/findProducts.do?cid=${categoryExt.cid}&pageNow=1">${categoryExt.cname}</a></dt>
                                <dd>
                                    <c:forEach items="${categoryExt.categorysecondExtList}" var="cs">
                                        <a href="${pageContext.request.contextPath}/product/findProducts.do?csid=${cs.cid}&pageNow=1">${cs.csname}</a><span>|</span>
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
</body>
</html>
