<%@ page import="cn.fjl.domain.Goods" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: FuJialuo
  Date: 2020/4/12
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

    <style>
        main img{
            width: 360px;
            height: 438.8px;
        }
    </style>
<head>
    <%

        String contextPath = request.getContextPath();
//    System.out.println(contextPath);
    %>

    <title>商品列表</title>

<%--    <script src="../static/plugins/bootstrap/js/bootstrap.min.js"></script>--%>
<%--    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap-theme.min.css">

<%--    Bootstrap4shop--%>
    <!-- Plugins -->
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/Bootstrap4shop/css/plugins.css">

    <!-- Style Css -->
    <link rel="stylesheet" href="../static/Bootstrap4shop/style.css">

    <!-- Custom Styles -->
    <link rel="stylesheet" href="../static/Bootstrap4shop/css/custom.css">


</head>
<body>

<%--引入头部--%>
   <jsp:include page="header.jsp"></jsp:include>

    <!-- Page Conttent -->
    <main class="page-content">

        <!-- 商品列表 -->
        <div class="blog-area bg-white section-padding-lg">
            <div> <h3>商品列表>>>>>>>></h3></div>
            <div class="container">
                <div class="row justify-content-center blog-wrapper">
                    <c:forEach items="${goodsPageInfo.list}" var="goods">
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="blog-item">
                                <div class="blog-item-image">
                                    <img src="${pageContext.request.contextPath}/${goods.picNumber}" alt="blog image">
                                </div>
                                <div class="blog-item-content">
                                    <div class="blog-item-content-inner">
                                        <h6 class="blog-item-title">商品名：<span>${goods.GName}</span></h6>
                                        <p>介绍：${goods.GIntroduction}</p>

<%--                                        进入该商品的详情页--%>
                                        <a href="${pageContext.request.contextPath}/goods/${goods.gid}" class="sf-button sf-button-transparent sf-button-sm">
                                            <span>选购</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>



                </div>

<%--                分页--%>
                <div class="sf-pagination text-center">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=${pageBean.cid}&condition=${pageBean.condition}&currentPage=1&pageSize=${pageBean.pageSize}"><<</a></li>

                        <c:forEach begin="1"  end="${goodsPageInfo.pages}" var="i" >
                            <c:if test="${i == goodsPageInfo.pageNum}">
                                <li class="active"><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=${pageBean.cid}&condition=${pageBean.condition}&currentPage=${i}&pageSize=${pageBean.pageSize}">${i}</a></li>
                            </c:if>
                            <c:if test="${i != goodsPageInfo.pageNum}">
                                <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=${pageBean.cid}&condition=${pageBean.condition}&currentPage=${i}&pageSize=${pageBean.pageSize}">${i}</a></li>
                            </c:if>
                        </c:forEach>

                        <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=${pageBean.cid}&condition=${pageBean.condition}&currentPage=${goodsPageInfo.pages}&pageSize=${pageBean.pageSize}">>></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--// Blog Area -->

    </main>
    <!--// Page Conttent -->


<!-- Js Files -->
<script src="../static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../static/Bootstrap4shop/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="../static/Bootstrap4shop/js/popper.min.js"></script>
<script src="../static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/Bootstrap4shop/js/plugins.js"></script>
<script src="../static/Bootstrap4shop/js/main.js"></script>
</body>
</html>
