<%--

  Created by IntelliJ IDEA.
  User: FuJialuo
  Date: 2020/4/15
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--页面头部--%>
<header>

    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">网上购物商城</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">食品 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=1">食品</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">服装 <span class="caret"></span></a>
                        <!-- Single button -->
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=2">服装</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">数码 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/goods/findAllByCondition?cid=3">数码</a></li>
                        </ul>
                    </li>
                </ul>
                <form id="headerForm" class="navbar-form navbar-left" role="search"
                      action="#">
                    <div class="form-group">
                        <input id="condition" type="text" name="condition" class="form-control" placeholder="搜索">
                    </div>
                    <button id="sub" type="button" class="btn btn-default">搜索</button>
                </form>
                <div class="navbar navbar-right">
                    <a id="shoppingCartCount" href="${pageContext.request.contextPath}/shoppingCart/findAll.do?uid=${user.uid}" type="button" class="btn btn-info navbar-btn">购物车 （0）</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${user != null}">
                        <li><a href="${pageContext.request.contextPath}/user/findOneUpdate/${user.uid}">${user.username}欢迎你！</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/exit/${user.uid}">注销</a></li>

                    </c:if>
                    <c:if test="${user  == null}">
                        <li><a href="${pageContext.request.contextPath}/pages/login.jsp">登录</a></li>
                    </c:if>
                    <li><a href="${pageContext.request.contextPath}/pages/register.jsp">注册</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">特别鸣谢 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">刘</a></li>
                            <li><a href="#">官</a></li>
                            <li><a href="#">付</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">友情链接</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>
<%--页面头部/--%>
<script src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script>
    $(function () {
        $.post("${pageContext.request.contextPath}/shoppingCart/0/${user.uid}/"+0+"/addGoods.do",$("#form").serialize(),function (data) {
            //！注意使用text方法，替换文本内容
            $("#shoppingCartCount").text("购物车（"+data.shoppingCartCount+")");
        });
        $("#sub").click(function () {
            var condition = $("#condition").val();
            location.href = "${pageContext.request.contextPath}/goods/findAllByCondition?condition="+condition;
        });
    })
</script>